INCLUDE Irvine32.inc

.data
welcomeMsg byte "----------Welcome to Simple Quiz Program!---------- ",0Dh,0Ah,0

Q1 byte "1) How many general-purpose registers are there in x86 architecture? ",0Dh,0Ah, 
"a) 8",0Dh,0Ah, "b) 4",0Dh,0Ah, "c) 2",0Dh,0Ah, "d) 16",0Dh,0Ah, 0

Q2 byte "2) Which register is commonly used to print any value? ",0Dh,0Ah, 
"a) ebx",0Dh,0Ah, "b) eax",0Dh,0Ah, "c) esi",0Dh,0Ah, "d) ecx",0Dh,0Ah, 0

Q3 byte "3) Which instructions are used to manage the stack? ",0Dh,0Ah, 
"a) push/pop",0Dh,0Ah, "b) enter/leave",0Dh,0Ah, "c) add/sub",0Dh,0Ah, "d) mov/call",0Dh,0Ah, 0

Q4 byte "4) Which instruction is used to swap two values? ",0Dh,0Ah, 
"a) mov",0Dh,0Ah, "b) swap",0Dh,0Ah, "c) xchg",0Dh,0Ah, "d) mul",0Dh,0Ah, 0

Q5 byte "5) Which register is commonly used as a loop counter? ",0Dh,0Ah, 
"a) ebp",0Dh,0Ah, "b) edx",0Dh,0Ah, "c) esp",0Dh,0Ah, "d) ecx",0Dh,0Ah, 0

Q6 byte "6) The data type DWORD can hold how many bytes?  ",0Dh,0Ah, 
"a) 8",0Dh,0Ah, "b) 4",0Dh,0Ah, "c) 2",0Dh,0Ah, "d) 1",0Dh,0Ah, 0

Q7 byte "7) which is NOT valid for mov instruction? ",0Dh,0Ah, 
"a) reg/reg",0Dh,0Ah, "b) reg/imm",0Dh,0Ah, "c) mem/mem",0Dh,0Ah, "d) reg/mem",0Dh,0Ah, 0

Q8 byte "8) What is the alternative to functions in assembly language?  ",0Dh,0Ah, 
"a) Procedure",0Dh,0Ah, "b) label",0Dh,0Ah, "c) stack",0Dh,0Ah, "d) .code",0Dh,0Ah, 0

Q9 byte "9) Which register is commonly used to print strings? ",0Dh,0Ah, 
"a) ebx",0Dh,0Ah, "b) ecx",0Dh,0Ah, "c) esp",0Dh,0Ah, "d) edx",0Dh,0Ah, 0

Q10 byte "10) Which of the following is NOT an instruction of Irvine32? ",0Dh,0Ah, 
"a) mov",0Dh,0Ah, "b) idiv",0Dh,0Ah, "c) calls",0Dh,0Ah, "d) LEA",0Dh,0Ah, 0

Exp1 byte "Explanation: a) 8 - The x86 architecture has 8 general-purpose registers (eax, ebx, ecx, edx, esi, edi, esp, ebp).",0Dh,0Ah,0

Exp2 byte "Explanation: b) eax - The eax register is commonly used for printing and arithmetic operations in assembly.",0Dh,0Ah,0

Exp3 byte "Explanation: a) push/pop - These instructions manage the stack by adding or removing values.",0Dh,0Ah,0

Exp4 byte "Explanation: c) xchg - The xchg instruction is used to exchange values between registers or memory.",0Dh,0Ah,0

Exp5 byte "Explanation: d) ecx - The ecx register is often used as a counter in loops and iteration.",0Dh,0Ah,0

Exp6 byte "Explanation: b) 4 - DWORD (Double Word) holds 4 bytes or 32 bits of data.",0Dh,0Ah,0

Exp7 byte "Explanation: c) mem/mem - The mov instruction does not support memory-to-memory transfers directly.",0Dh,0Ah,0

Exp8 byte "Explanation: a) Procedure - Procedures in assembly are the alternative to functions in higher-level languages.",0Dh,0Ah,0

Exp9 byte "Explanation: d) edx - The edx register is used to print strings in conjunction with system calls.",0Dh,0Ah,0

Exp10 byte "Explanation: c) calls - 'calls' is not an instruction in Irvine32; use 'call' for procedure invocation.",0Dh,0Ah,0

coalExpArr dword offset Exp1, offset Exp2, offset Exp3, offset Exp4, offset Exp5, offset Exp6, offset Exp7, offset Exp8, offset Exp9, offset Exp10
coalArr dword offset Q1, offset Q2, offset Q3, offset Q4, offset Q5, offset Q6, offset Q7, offset Q8, offset Q9, offset Q10
prompt byte "Enter your option (a,b,c,d): ",0
correctAnsCoal byte "abacdbcadc",0
userAnsCoal byte 10 dup (?)
coalScore dword 0
coalMsg byte "YOUR FINAL SCORE FOR COAL QUIZ: ",0
coalMsg1 byte "Your wrong attempted questions: ",0Dh,0Ah,0
coalMsg2 byte "Correct Answer: ",0
coalMsg3 byte "Your Answer: ",0

Q11 byte "1) What does VPN stand for in networking? ",0Dh,0Ah, 
"a) Virtual Private Network",0Dh,0Ah, "b) Virtual Public Network",0Dh,0Ah, 
"c) Valid Public Network",0Dh,0Ah, "d) None of the above",0Dh,0Ah, 0

Q12 byte "2) What does DDos attack mean? ",0Dh,0Ah, 
"a) Data Distribution over Server",0Dh,0Ah, "b) Distributed Denial of Service",0Dh,0Ah, 
"c) Direct Data Over Server",0Dh,0Ah, "d) Digital Denial of Service",0Dh,0Ah, 0

Q13 byte "3) Which of the following is an example of a transposition cipher? ",0Dh,0Ah, 
"a) Viginere cipher",0Dh,0Ah, "b) Railfence cipher",0Dh,0Ah, 
"c) Caesar cipher",0Dh,0Ah, "d) Playfair cipher",0Dh,0Ah, 0

Q14 byte "4) Which cryptographic method uses the same key for encryption and decryption? ",0Dh,0Ah, 
"a) Asymmetric encryption",0Dh,0Ah, "b) Symmetric encryption",0Dh,0Ah, 
"c) RSA",0Dh,0Ah, "d) Diffie-Hellman",0Dh,0Ah, 0

Q15 byte "5) What type of passwords are weak and should not be used? ",0Dh,0Ah, 
"a) Dictionary-based password",0Dh,0Ah, "b) Short-length simple password",0Dh,0Ah, 
"c) Date-of-birth and other profile related info",0Dh,0Ah, "d) All of the other options are correct",0Dh,0Ah, 0

Q16 byte "6) What is the primary purpose of a hash function?  ",0Dh,0Ah, 
"a) To encrypt data",0Dh,0Ah, "b) To generate a fixed-size output from variable-sized input",0Dh,0Ah, 
"c) To compress data",0Dh,0Ah, "d) To sign documents",0Dh,0Ah, 0

Q17 byte "7) Which of the following is not a substitution cipher? ",0Dh,0Ah, 
"a) Viginere cipher",0Dh,0Ah, "b) Caesar cipher",0Dh,0Ah, 
"c) DES",0Dh,0Ah, "d) Vernam cipher",0Dh,0Ah, 0

Q18 byte "8) Which type of malware is designed to replicate itself? ",0Dh,0Ah, 
"a) Virus",0Dh,0Ah, "b) Worm",0Dh,0Ah, "c) Trojan",0Dh,0Ah, "d) Trojan",0Dh,0Ah, 0

Q19 byte "9) Which of these is a method to avoid phishing attacks? ",0Dh,0Ah, 
"a) Multi-factor authentication",0Dh,0Ah, "b) Using public Wi-Fi",0Dh,0Ah, 
"c) Ignoring email encryption",0Dh,0Ah, "d) Opening suspicious emails",0Dh,0Ah, 0

Q20 byte "10) What does AES stand for in encryption? ",0Dh,0Ah, 
"a) Advanced Encryption Standard",0Dh,0Ah, "b) Automatic Encryption System",0Dh,0Ah, 
"c) Adaptive Encryption Security",0Dh,0Ah, "d) None of the above",0Dh,0Ah, 0

Exp11 byte "Explanation: a) Virtual Private Network - VPN allows secure communication over a public network by creating an encrypted tunnel.",0Dh,0Ah,0

Exp12 byte "Explanation: b) Distributed Denial of Service - A DDoS attack floods a target system with traffic from multiple sources to disrupt its services.",0Dh,0Ah,0

Exp13 byte "Explanation: b) Railfence cipher - It rearranges the plaintext letters in a specific pattern and is a type of transposition cipher.",0Dh,0Ah,0

Exp14 byte "Explanation: b) Symmetric encryption - This method uses the same key for both encryption and decryption.",0Dh,0Ah,0

Exp15 byte "Explanation: d) All of the other options are correct - Weak passwords include dictionary words, short/simple ones, and profile-related info.",0Dh,0Ah,0

Exp16 byte "Explanation: b) To generate a fixed-size output from variable-sized input - Hash functions map data of arbitrary size to a fixed length.",0Dh,0Ah,0

Exp17 byte "Explanation: c) DES - DES is a block cipher, not a substitution cipher. Substitution ciphers replace letters or bits systematically.",0Dh,0Ah,0

Exp18 byte "Explanation: b) Worm - Worms are self-replicating malware that spread without needing to attach to a program.",0Dh,0Ah,0

Exp19 byte "Explanation: a) Multi-factor authentication - This adds an extra layer of security and helps prevent phishing attacks.",0Dh,0Ah,0

Exp20 byte "Explanation: a) Advanced Encryption Standard - AES is a widely-used encryption standard known for its efficiency and security.",0Dh,0Ah,0

cyberExpArr dword offset Exp11, offset Exp12, offset Exp13, offset Exp14, offset Exp15, offset Exp16, offset Exp17, offset Exp18, offset Exp19, offset Exp20
cyberArr dword offset Q11, offset Q12, offset Q13, offset Q14, offset Q15, offset Q16, offset Q17, offset Q18, offset Q19, offset Q20
correctAnsCyber byte "abbbdbcbaa",0
userAnsCyber byte 10 dup (?)
cyberScore dword 0
cyberMsg byte "YOUR FINAL SCORE FOR CYBERSECURITY QUIZ: ",0
cyberMsg1 byte "Your wrong attempted questions: ",0Dh,0Ah,0
cyberMsg2 byte "Correct Answer: ",0
cyberMsg3 byte "Your Answer: ",0

Q21 byte "1) Which of the following is a linear data structure? ",0Dh,0Ah, 
"a) Array",0Dh,0Ah, "b) Tree",0Dh,0Ah, "c) Graph",0Dh,0Ah, "d) None of the above",0Dh,0Ah, 0

Q22 byte "2) Which of the following is not a sorting algorithm? ",0Dh,0Ah,  
"a) Bubble Sort",0Dh,0Ah, "b) Merge Sort",0Dh,0Ah, "c) Interpolation Sort",0Dh,0Ah, "d) Quick Sort",0Dh,0Ah, 0

Q23 byte "3) Which of the following operations is supported by a stack? ",0Dh,0Ah, 
"a) Push",0Dh,0Ah, "b) Pop",0Dh,0Ah, "c) Peek",0Dh,0Ah, "d) All of the above",0Dh,0Ah, 0

Q24 byte "4) Which of the following is the characteristic of a binary tree? ",0Dh,0Ah, 
"a) Each node has at most two children",0Dh,0Ah, "b) Each node has three children",0Dh,0Ah, 
"c) It is a linear data structure",0Dh,0Ah, "d) Children of nodes depend on order of tree",0Dh,0Ah, 0

Q25 byte "5) What is the height of a balanced binary tree with n nodes? ",0Dh,0Ah, 
"a) O(n)",0Dh,0Ah, "b) O(log n)",0Dh,0Ah, "c) O(nlogn)",0Dh,0Ah, "d) O(n^2)",0Dh,0Ah, 0

Q26 byte "6) Which data structure is best suited for implementing a priority queue? ",0Dh,0Ah, 
"a) Array",0Dh,0Ah, "b) Stack",0Dh,0Ah, "c) Linked List",0Dh,0Ah, "d) Heap tree",0Dh,0Ah, 0

Q27 byte "7) Which sorting algorithm has the best average case time complexity? ",0Dh,0Ah, 
"a) Bubble Sort",0Dh,0Ah, "b) Merge Sort",0Dh,0Ah, "c) Insertion Sort",0Dh,0Ah, "d) Selection Sort",0Dh,0Ah, 0

Q28 byte "8) In a Binary Search Tree (BST), which traversal gives the elements in sorted order? ",0Dh,0Ah, 
"a) Preorder",0Dh,0Ah, "b) Postorder",0Dh,0Ah, "c) Level Order",0Dh,0Ah, "d) Inorder",0Dh,0Ah, 0

Q29 byte "9) Which data structure uses LIFO (Last In, First Out) principle? ",0Dh,0Ah, 
"a) Queue",0Dh,0Ah, "b) Stack",0Dh,0Ah, "c) Linked List",0Dh,0Ah, "d) Array",0Dh,0Ah, 0

Q30 byte "10) What is worse time complexity of linear search if array is sorted? ",0Dh,0Ah, 
"a) O(log n)",0Dh,0Ah, "b) O(n)",0Dh,0Ah, "c) O(1)",0Dh,0Ah, "d) O(n^2)",0Dh,0Ah, 0

Exp21 byte "Explanation: a) Array - Arrays are linear data structures as their elements are arranged sequentially in memory.",0Dh,0Ah,0

Exp22 byte "Explanation: c) Interpolation Sort - Interpolation search is a searching algorithm, not a sorting algorithm.",0Dh,0Ah,0

Exp23 byte "Explanation: d) All of the above - Stack supports push (insert), pop (remove), and peek (view top element) operations.",0Dh,0Ah,0

Exp24 byte "Explanation: a) Each node has at most two children - This is the defining property of a binary tree.",0Dh,0Ah,0

Exp25 byte "Explanation: b) O(log n) - A balanced binary tree ensures that the height is proportional to the logarithm of the number of nodes.",0Dh,0Ah,0

Exp26 byte "Explanation: d) Heap tree - A heap tree is ideal for priority queues as it efficiently supports insert and extract-min/max operations.",0Dh,0Ah,0

Exp27 byte "Explanation: b) Merge Sort - Merge Sort has the best average case time complexity of O(nlogn) among the options.",0Dh,0Ah,0

Exp28 byte "Explanation: d) Inorder - In a BST, an inorder traversal retrieves elements in non-decreasing (sorted) order.",0Dh,0Ah,0

Exp29 byte "Explanation: b) Stack - A stack uses the Last In, First Out (LIFO) principle for its operations.",0Dh,0Ah,0

Exp30 byte "Explanation: b) O(n) - Even if the array is sorted, linear search checks elements one by one in the worst case.",0Dh,0Ah,0

dsaExpArr dword offset Exp21, offset Exp22, offset Exp23, offset Exp24, offset Exp25, offset Exp26, offset Exp27, offset Exp28, offset Exp29, offset Exp30

dsaArr dword offset Q21, offset Q22, offset Q23, offset Q24, offset Q25, offset Q26, offset Q27, offset Q28, offset Q29, offset Q30
correctAnsDsa byte "acdabdbdbb",0
userAnsDsa byte 10 dup (?)
dsaScore dword 0
dsaMsg byte "YOUR FINAL SCORE FOR DSA QUIZ: ",0
dsaMsg1 byte "Your wrong attempted questions: ",0Dh,0Ah,0
dsaMsg2 byte "Correct Answer: ",0
dsaMsg3 byte "Your Answer: ",0

prompt1 byte "Which subject's Quiz do you want to take (1,2,3): ",0
quizChoice byte "-----------Main Menu-----------",0Dh,0Ah, "1) COAL",0Dh,0Ah, "2) CyberSecurity",0Dh,0Ah, "3) DSA",0Dh,0Ah, 0
invalidMsg byte "Invalid input! ",0Dh,0Ah, 0
invalidMsg1 byte "Invalid input! ",0Dh,0Ah, "Exiting program....." ,0
againMsg byte "Do you wish to continue? ",0Dh,0Ah,0Dh,0Ah, "1) Main Menu",0Dh,0Ah, "0) Exit",0Dh,0Ah, "Enter your choice (1,0): ",0
clrmsg byte "PRESS ANY KEY TO GET RESULT: ",0
endMsg byte "THANKS FOR USING SIMPLE QUIZ PROGRAM! HAVE A GOOD DAY",0

message1 byte "EXCELLENT WORK! Keep it up!", 0
message2 byte "GOOD JOB! You can do even better!", 0
message3 byte "DON'T WORRY!, practice makes perfect.", 0

quiz1 byte "Coal Quiz: ",0Dh,0Ah,0
quiz2 byte "CyberSecurity Quiz: ",0Dh,0Ah,0
quiz3 byte "DSA Quiz: ",0Dh,0Ah,0
.code
main PROC
    mov edx, OFFSET welcomeMsg      
    call WriteString        
    call Crlf      
    
choiceL:
    mov edx, offset quizChoice
    call writestring
    mov edx, offset prompt1
    call writestring
    call readint
    call crlf

    cmp eax, 1
    jne L1
    mov edx, offset quiz1
    call writestring
    call crlf
    call CoalQuiz
    jmp L4
    L1:
       cmp eax, 2
       jne L2
       mov edx, offset quiz2
       call writestring
       call crlf
       call CyberQuiz
       jmp L4
       L2:
          cmp eax, 3
          jne L3
          mov edx, offset quiz3
          call writestring
          call crlf
          call DsaQuiz
          jmp L4
          L3:
             mov edx, offset invalidMsg
             call writestring
             call crlf

             L4:
                mov edx, offset againMsg
                call writestring
                call readint
                cmp eax, 1
                je L5
                cmp eax, 0
                jne L6
                jmp endL

                L5:
                   call ClrScr
                   jmp choiceL
                L6:
                   call crlf
                   mov edx, offset invalidMsg1
                   call writestring
                   call crlf

endL:
     mov edx, offset endMsg
     call writestring
     call crlf

    exit
main ENDP

CoalQuiz Proc

    mov eax,0
    mov ebx,0
    mov ecx, lengthof coalArr
    mov esi, 0
    mov edi, 0
L1:
    mov edx, coalArr[esi*type coalArr]
    call writestring
    call crlf
    mov edx, offset prompt 
    call writestring
    call readchar
    call writechar
    or al, 00100000b
    mov bl, correctAnsCoal[edi]
    mov userAnsCoal[edi], al
    cmp al, bl
    jne L2
    inc coalScore

    L2:
       inc edi
       inc esi
       call readchar
       call crlf
       call crlf
       loop L1

    mov edx, offset clrmsg
    call writestring
    call readchar

    call ClrScr

    mov edx, offset coalMsg 
    call writestring
    mov eax , coalScore
    call writedec
    call crlf
    call crlf

    cmp coalScore, 9
    jge HighScore

    cmp coalScore, 7
    jge MediumScore

    jmp LowScore

HighScore:
    mov edx, offset message1
    call WriteString
    jmp EndProgram

MediumScore:
    mov edx, offset message2
    call WriteString
    jmp EndProgram

LowScore:
    mov edx, offset message3
    call WriteString

EndProgram:
    call crlf
    call crlf
    call crlf

    cmp coalScore, 10
    jl incorrectL
    jmp endL

incorrectL:
    mov edx, offset coalMsg1
    call writestring
    call crlf
    mov edi, 0
    mov ecx, 10
    NL:
       mov al, correctAnsCoal[edi]
       mov bl, userAnsCoal[edi]
       cmp al, bl
       jne NL1
       jmp NL2

       NL1:
           mov edx, coalArr[edi*type coalArr]
           call writestring
           call crlf
           mov edx, offset coalMsg2
           call writestring
           call writechar
           call crlf
           mov edx, offset coalMsg3
           call writestring
           mov al, bl
           call writechar
           call crlf
           call crlf
           mov edx, coalExpArr[edi*type coalExpArr]
           call writestring
           call crlf
           call crlf
       NL2:
           inc edi
           loop NL
    endL:

    mov coalScore, 0
    ret

CoalQuiz Endp

CyberQuiz Proc

    mov eax,0
    mov ebx,0
    mov ecx, lengthof cyberArr
    mov esi, 0
    mov edi, 0
L1:
    mov edx, cyberArr[esi*type cyberArr]
    call writestring
    call crlf
    mov edx, offset prompt 
    call writestring
    call readchar
    call writechar
    or al, 00100000b
    mov bl, correctAnsCyber[edi]
    mov userAnsCyber[edi], al
    cmp al, bl
    jne L2
    inc cyberScore

    L2:
       inc edi
       inc esi
       call readchar
       call crlf
       call crlf
       loop L1

    mov edx, offset clrmsg
    call writestring
    call readchar

    call ClrScr

    mov edx, offset cyberMsg 
    call writestring
    mov eax , cyberScore
    call writedec
    call crlf
    call crlf

    cmp cyberScore, 9
    jge HighScore

    cmp cyberScore, 7
    jge MediumScore

    jmp LowScore

HighScore:
    mov edx, offset message1
    call WriteString
    jmp EndProgram

MediumScore:
    mov edx, offset message2
    call WriteString
    jmp EndProgram

LowScore:
    mov edx, offset message3
    call WriteString

EndProgram:
    call crlf
    call crlf
    call crlf

    cmp cyberScore, 10
    jl incorrectL
    jmp endL

incorrectL:
    mov edx, offset cyberMsg1
    call writestring
    call crlf
    mov edi, 0
    mov ecx, 10
    NL:
       mov al, correctAnsCyber[edi]
       mov bl, userAnsCyber[edi]
       cmp al, bl
       jne NL1
       jmp NL2

       NL1:
           mov edx, cyberArr[edi*type cyberArr]
           call writestring
           call crlf
           mov edx, offset cyberMsg2
           call writestring
           call writechar
           call crlf
           mov edx, offset cyberMsg3
           call writestring
           mov al, bl
           call writechar
           call crlf
           call crlf
           mov edx, cyberExpArr[edi*type cyberExpArr]
           call writestring
           call crlf
           call crlf
       NL2:
           inc edi
           loop NL
    endL:

    mov cyberScore, 0
    ret

CyberQuiz Endp

DsaQuiz Proc

    mov eax,0
    mov ebx,0
    mov ecx, lengthof dsaArr
    mov esi, 0
    mov edi, 0
L1:
    mov edx, dsaArr[esi*type dsaArr]
    call writestring
    call crlf
    mov edx, offset prompt 
    call writestring
    call readchar
    call writechar
    or al, 00100000b
    mov bl, correctAnsDsa[edi]
    mov userAnsDsa[edi], al
    cmp al, bl
    jne L2
    inc dsaScore

    L2:
       inc edi
       inc esi
       call readchar
       call crlf
       call crlf
       loop L1

    mov edx, offset clrmsg
    call writestring
    call readchar

    call ClrScr

    mov edx, offset dsaMsg 
    call writestring
    mov eax , dsaScore
    call writedec
    call crlf
    call crlf

    cmp dsaScore, 9
    jge HighScore

    cmp dsaScore, 7
    jge MediumScore

    jmp LowScore

HighScore:
    mov edx, offset message1
    call WriteString
    jmp EndProgram

MediumScore:
    mov edx, offset message2
    call WriteString
    jmp EndProgram

LowScore:
    mov edx, offset message3
    call WriteString

EndProgram:
    call crlf
    call crlf
    call crlf

    cmp dsaScore, 10
    jl incorrectL
    jmp endL

incorrectL:
    mov edx, offset dsaMsg1
    call writestring
    call crlf
    mov edi, 0
    mov ecx, 10
    NL:
       mov al, correctAnsDsa[edi]
       mov bl, userAnsDsa[edi]
       cmp al, bl
       jne NL1
       jmp NL2

       NL1:
           mov edx, dsaArr[edi*type dsaArr]
           call writestring
           call crlf
           mov edx, offset dsaMsg2
           call writestring
           call writechar
           call crlf
           mov edx, offset dsaMsg3
           call writestring
           mov al, bl
           call writechar
           call crlf
           call crlf
           mov edx, dsaExpArr[edi*type dsaExpArr]
           call writestring
           call crlf
           call crlf
       NL2:
           inc edi
           loop NL
    endL:

    mov dsaScore, 0
    ret

DsaQuiz Endp

end main