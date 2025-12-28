# Ceasar-Crypter:

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) ![10 Seattle](https://github.com/user-attachments/assets/c70b7f21-688a-4239-87c9-9a03a8ff25ab) ![10 1 Berlin](https://github.com/user-attachments/assets/bdcd48fc-9f09-4830-b82e-d38c20492362) ![10 2 Tokyo](https://github.com/user-attachments/assets/5bdb9f86-7f44-4f7e-aed2-dd08de170bd5) ![10 3 Rio](https://github.com/user-attachments/assets/e7d09817-54b6-4d71-a373-22ee179cd49c)  ![10 4 Sydney](https://github.com/user-attachments/assets/e75342ca-1e24-4a7e-8fe3-ce22f307d881) ![11 Alexandria](https://github.com/user-attachments/assets/64f150d0-286a-4edd-acab-9f77f92d68ad) ![12 Athens](https://github.com/user-attachments/assets/59700807-6abf-4e6d-9439-5dc70fc0ceca)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Discription](https://github.com/user-attachments/assets/4a778202-1072-463a-bfa3-842226e300af) ![Ceasar Crypt](https://github.com/user-attachments/assets/fa9f9405-6403-438c-a90b-e98580749d74)  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) ![122025](https://github.com/user-attachments/assets/2123510b-f411-4624-a2fc-695ffb3c4b70)  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

Caesar cipher is one of the simplest and most widely known encryption techniques used in [cryptography](https://en.wikipedia.org/wiki/Cryptography). It is a type of [substitution cipher](https://en.wikipedia.org/wiki/Substitution_cipher) in which each letter in the [plaintext](https://en.wikipedia.org/wiki/Plaintext) is replaced by a letter some fixed number of positions along the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

The encryption step performed by a Caesar cipher is often incorporated as part of more complex schemes, such as the [Vigenère cipher](https://en.wikipedia.org/wiki/Vigen%C3%A8re_cipher), and still has modern application in the [ROT13](https://en.wikipedia.org/wiki/ROT13) system. As with all single-alphabet substitution ciphers, the Caesar cipher is easily broken and in modern practice offers essentially no [communications security](https://en.wikipedia.org/wiki/Communications_security).

</br>

![CeasarCrypter](https://github.com/user-attachments/assets/c76abeb4-d52a-4e2a-ac17-9fccc5fda698)

</br>

The action of a Caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. The cipher illustrated here uses a left shift of 3, so that (for example) each occurrence of E in the plaintext becomes B in the ciphertext.

</br>

![Example](https://github.com/user-attachments/assets/3c42fae7-44df-4544-be47-85e6832f8d53)

</br>

The transformation can be represented by aligning two alphabets; the cipher is the plain alphabet shifted left or right by a certain number of positions. For instance, here is a Caesar cipher using a left shift of three places, equivalent to a right shift of 23 (the shift parameter is used as the key):

### Example:

```
Plain	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z
Cipher	X	Y	Z	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W

````

When encrypting, a person looks up each letter of the message in the "plain" line and writes down the corresponding letter in the "cipher" line.

```
Plaintext:  THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG
Ciphertext: QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD
```

### Python Code Example:
You can implement this in code (like Python or C++) by using character arithmetic and the modulo operator (%), as shown in this example formula. 

```python
def caesar_cipher(text, shift):
    result = ""
    for char in text:
        if 'a' <= char <= 'z':
            # Encrypt lowercase letters
            start = ord('a')
            encrypted_ord = (ord(char) - start + shift) % 26 + start
            result += chr(encrypted_ord)
        elif 'A' <= char <= 'Z':
            # Encrypt uppercase letters
            start = ord('A')
            encrypted_ord = (ord(char) - start + shift) % 26 + start
            result += chr(encrypted_ord)
        else:
            # Keep non-alphabetic characters (spaces, numbers, symbols) as is
            result += char
    return result
```



