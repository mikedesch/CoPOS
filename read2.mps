#!/usr/bin/mumps

 open 1:"./fruits.txt,old"
 if '$test write "oops -- no such file",! halt

 set f=0
 for  do  if f=1 quit
 . use 1
 . read line
 . if '$test set f=1 quit
 . write line,!
