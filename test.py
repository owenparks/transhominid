import subprocess
from subprocess import Popen, PIPE, STDOUT

def run(script):
    p = Popen(['interpreter/glulxe/glulxe', 'transhominid.inform/Build/output.gblorb'], stdout=PIPE, stdin=PIPE, stderr=STDOUT)
    return p.communicate()[0].rstrip()

if __name__ == "__main__":
    output = run('\n\n\nlook\n')
    print(output)

