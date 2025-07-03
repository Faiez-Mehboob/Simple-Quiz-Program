# 🧠 Simple Quiz Program in Assembly Language

This project is a **Simple Multiple-Choice Quiz Application** written in **x86 Assembly Language**. It was developed for the **COAL (Computer Organization & Assembly Language)** lab project and helps users test their knowledge across three topics: **COAL**, **CyberSecurity**, and **DSA**.

## 🎯 Objective

The goal of this project is to demonstrate core assembly programming concepts like:

- Input/output operations
- Arrays in memory
- Procedure calls
- Control flow and branching
- Scorekeeping and data comparison

All while building an interactive quiz experience within a text-based console interface.


## 🧩 Features

- 📋 **Main Menu** to choose quiz categories:  
  - 1️⃣ COAL  
  - 2️⃣ CyberSecurity  
  - 3️⃣ DSA

- 📚 Each quiz contains multiple-choice questions (A/B/C/D)
- 🔡 Case-insensitive input — uppercase entries are converted to lowercase
- ✅ Input validation — invalid choices are marked wrong
- 🧠 Score tracking based on correct answers
- 📊 End-of-quiz result screen with:
  - Final score
  - Performance message (based on score)
  - List of incorrectly answered questions with:
    - User's answer
    - Correct answer
    - Explanation

- 🔁 Option to retake quiz or exit after each attempt


## 🧱 Technologies Used

- **Language**: x86 Assembly Language  
- **Assembler**: TASM / MASM  
- **Platform**: DOSBox or compatible emulator  
- **Concepts**: Arrays, Loops, Procedures, Conditionals, Strings


## 🔄 Program Flow

```text
Main Menu
  ├── Choose Quiz (COAL / CyberSecurity / DSA)
  │     ├── Display Questions (one at a time)
  │     ├── User selects answer (A/B/C/D)
  │     ├── Score updated
  │     ├── User answers stored for review
  │     └── End of quiz → Show result + wrong answers
  └── Take Another Quiz or Exit
```

## 💻 Usage Instructions

1. Open DOSBox or an x86 emulator environment.
2. Mount the folder containing the .ASM file.
3. Assemble and run the program using:
   - tasm quiz.asm
   - tlink quiz.obj
   - quiz.exe
4. Follow on-screen instructions to take quizzes.

## 🛠️ Learning Outcomes

- Writing structured Assembly code with procedures
- Handling input/output via registers and memory
- Reading and validating keyboard input
- Using arrays to store and compare answers
- Implementing scoring logic and control flow
- Deepening understanding of low-level programming and TASM/MASM

## ✅ Future Improvements

- Add more questions and quiz categories
- Export quiz results to a file
- Add timer functionality for each question
- Implement a difficulty level selector

## 📃 License

- This project is for educational use only.

