# 42 Exam 04 - Algorithmic and System Programming Challenges

This repository contains my solutions for the 42 Exam 04, which consists of three levels of algorithmic and system programming challenges.

## 📁 Project Structure

```
42-Exam04/
├── level1/          # Basic algorithmic problems
│   ├── n_queens/    # N-Queens puzzle solver
│   ├── permutation/ # Permutation generator
│   ├── power_set/   # Power set calculator
│   ├── rip/         # RIP (Routing Information Protocol)
│   └── tsp/         # Traveling Salesman Problem
├── level2/          # Intermediate system programming
│   ├── ft_popen/    # Custom popen implementation
│   ├── picoshell/   # Simple shell implementation
│   └── sandbox/     # Process sandboxing
└── level3/          # Advanced challenges
    ├── argo/        # Argo programming language interpreter
    └── vbc/         # Virtual Bytecode Compiler
```

## 🚀 Level 1 - Basic Algorithms

### N-Queens (`level1/n_queens/`)
Solves the N-Queens puzzle using backtracking algorithm.

**Usage:**
```bash
cd level1/n_queens
make
./n_queens 4
```

**Example Output:**
```
1 3 0 2
2 0 3 1
```

### Permutation (`level1/permutation/`)
Generates all possible permutations of a given set.

### Power Set (`level1/power_set/`)
Calculates the power set of a given set.

### RIP (`level1/rip/`)
Routing Information Protocol implementation.

### TSP (`level1/tsp/`)
Traveling Salesman Problem solver.

## 🔧 Level 2 - System Programming

### ft_popen (`level2/ft_popen/`)
Custom implementation of the `popen()` function.

### picoshell (`level2/picoshell/`)
A minimal shell implementation with basic command execution.

### sandbox (`level2/sandbox/`)
Process sandboxing and isolation mechanisms.

## 🎯 Level 3 - Advanced Challenges

### argo (`level3/argo/`)
Interpreter for the Argo programming language.

### vbc (`level3/vbc/`)
Virtual Bytecode Compiler implementation.

## 🛠️ Building and Running

### Prerequisites
- GCC compiler
- Make utility
- Standard C libraries

### Compilation
Each project can be compiled individually:

```bash
# Compile a specific project
cd level1/n_queens
make

# Or compile all projects
make all
```

### Testing
Most projects include test cases. Check individual project directories for specific testing instructions.

## 📝 Code Quality

- All code follows 42 coding standards
- Functions are properly documented
- Error handling is implemented where necessary
- Memory management follows best practices

## 🤝 Contributing

This is a personal project for 42 Exam 04. Feel free to use this as a reference, but please respect academic integrity policies.

## 📄 License

This project is for educational purposes as part of the 42 curriculum.

---

**Author:** [Your Name]  
**School:** 42  
**Exam:** Exam 04  
**Date:** [Current Date] 