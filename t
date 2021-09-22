#!/usr/bin/env python3

from subprocess import run, Popen, PIPE
from time import sleep

def main():
    p = run(['ocamlopt', '-o', 'main', 'main.ml'])

    p = Popen('ocaml', stdin = PIPE)
    with open('test.ml', 'r') as f:
        for line in f:
            sleep(.1)
            print(line, end = '')
            p.stdin.write(line.encode())
            p.stdin.flush()
    p.stdin.close()
    p.wait()

main()
