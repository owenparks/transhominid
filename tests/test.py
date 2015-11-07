import subprocess
from subprocess import Popen, PIPE, STDOUT

CRITPATH = """take wind
e
take asteroid
s
s
take rock
n
e
d
take emitter
inv\n"""

def run(script):
    p = Popen(['interpreter/glulxe/glulxe', 'transhominid.inform/Build/output.gblorb'], stdout=PIPE, stdin=PIPE, stderr=STDOUT)
    return p.communicate(input=script)[0].rstrip()

def test_criticalpath():
    output = run(CRITPATH)
    assert "*** YOU WIN ***" in output

if __name__ == "__main__":
    output = run(WINGAME)
    print(output)

