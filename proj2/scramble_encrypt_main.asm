.data
ciphertext: .ascii "This is random garbage! Notice that it is not null-terminated! You should not be seeing this text!"
plaintext: .asciiz "Do your homework and study! CSE 220, SBU, Fall 2019!!!"
alphabet: .asciiz "QeKEPOslaJbkfxUDdGTIStNwhjXnYCLvRpyFqBzmAuHrgoiZMcWV"
trash: .ascii "random garbage"

.text

la $a0, ciphertext
la $a1, plaintext
la $a2, alphabet
jal scramble_encrypt

move $a0, $v0
li $v0, 1
syscall

li $a0, '\n'
li $v0, 11
syscall

la $a0, ciphertext
li $v0, 4
syscall

li $a0, '\n'
li $v0, 11
syscall

li $a0, '\n'
li $v0, 11
syscall
