#!/usr/env/python

import os

import subprocess

thisdir = os.path.split(os.path.realpath(__file__))[0]
fontdir = os.path.join(thisdir,'fonts')
for font in os.listdir(fontdir):
    fontname, ext = os.path.splitext(font)
    print(fontname)
    subprocess.check_call(['cp','-r','Release','%s.Release' % fontname])
    if ext == 'otf':
        subprocess.check_call(['cp','-r','overlay/interpreter/glkote_otf.css', '%s.Release/interpreter/glkote.css' % fontname])
    elif ext == 'ttf':
        subprocess.check_call(['cp','-r','overlay/interpreter/glkote_ttf.css', '%s.Release/interpreter/glkote.css' % fontname])
    else:
        raise "Unknown font type %s!" % ext)
    #subprocess.check_call(['cp','-r','overlay/interpreter/glkote.css', '%s.Release/interpreter/glkote.css' % fontname])
    subprocess.check_call(['cp',os.path.join(fontdir, font), os.path.join('%s.Release'%fontname,'interpreter','myfont'+ext)])
    
