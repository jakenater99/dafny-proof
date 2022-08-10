#! /bin/bash

echo "method m() { assert 1+1 == 2; }" > a.dfyp
echo "method m() { assert 1+1 == 3; }" > b.dfyp
echo "method Main() { print (42,131), '\n'; }" > c.dfyp

DIR="$(dirname ${BASH_SOURCE[0]})"
echo Should succeed
$DIR/dafny /compile:0 a.dfyp
echo Should fail
$DIR/dafny /compile:0 -useBaseNameForFileName b.dfyp
echo Compiling on C#
$DIR/dafny /compile:3 /compileVerbose:0 /compileTarget:cs c.dfyp
echo Compiling to Javascript
$DIR/dafny /compile:3 /compileVerbose:0 /compileTarget:js c.dfyp
echo Compiling to Java
$DIR/dafny /compile:3 /compileVerbose:0 /compileTarget:java c.dfyp
echo Compiling to Go
$DIR/dafny /compile:3 /compileVerbose:0 /compileTarget:go c.dfyp
rm -rf a.dfyp b.dfyp c.dfyp c-go c-java c
