.text
addi $t0, $zero, 25 # num quarters
addi $t1, $zero, 10 # num dimes 
addi $t2, $zero, 5 # num nickles
addi $t3, $zero, 26  # num change
div $t3, $t0 # t0 represents the number of quarters
mfhi $t3
mflo $t0
div $t3, $t1 #t1 represents the number of dimes
mfhi $t3
mflo $t1
div $t3, $t2 #t2 represents to number of nickles
mfhi $t3
mflo $t2
#t3 represents the number of pennies
add $a0, $zero, $t0
li $v0, 1
syscall 
li $v0, 4
la $a0, String1
syscall
add $a0, $zero, $t1
li $v0, 1
syscall 
li $v0, 4
la $a0, String2
syscall
add $a0, $zero, $t2
li $v0, 1
syscall 
li $v0, 4
la $a0, String3
syscall
add $a0, $zero, $t3
li $v0, 1
syscall 
li $v0, 4
la $a0, String4
syscall

.data

String1: .asciiz " quarters, "
String2: .asciiz " dimes, "
String3: .asciiz " nickels, and "
String4: .asciiz " pennies"
