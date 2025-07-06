# 42 Exam 04 - Project Structure Documentation

## Overview

This repository contains solutions for the 42 Exam 04, which tests knowledge in algorithmic problem-solving and system programming. The exam is divided into three levels of increasing complexity.

## Level 1 - Basic Algorithmic Problems

### 1. N-Queens (`level1/n_queens/`)
**Problem**: Place N queens on an N×N chessboard so that no two queens threaten each other.

**Algorithm**: Backtracking
- **Time Complexity**: O(N!)
- **Space Complexity**: O(N)

**Files**:
- `n_queens.c` - Main implementation
- `subject.txt` - Problem description
- `Makefile` - Build configuration

**Usage**:
```bash
cd level1/n_queens
make
./n_queens 4
```

### 2. Permutation (`level1/permutation/`)
**Problem**: Generate all possible permutations of a given set.

**Algorithm**: Recursive permutation generation
- **Time Complexity**: O(N!)
- **Space Complexity**: O(N)

### 3. Power Set (`level1/power_set/`)
**Problem**: Calculate the power set (all possible subsets) of a given set.

**Algorithm**: Bit manipulation or recursive generation
- **Time Complexity**: O(2^N)
- **Space Complexity**: O(2^N)

### 4. RIP (`level1/rip/`)
**Problem**: Implement Routing Information Protocol (RIP) algorithm.

**Algorithm**: Distance vector routing
- **Time Complexity**: O(V^3) where V is number of vertices
- **Space Complexity**: O(V^2)

### 5. TSP (`level1/tsp/`)
**Problem**: Solve the Traveling Salesman Problem.

**Algorithm**: Dynamic programming or branch and bound
- **Time Complexity**: O(N^2 * 2^N)
- **Space Complexity**: O(N * 2^N)

## Level 2 - System Programming

### 1. ft_popen (`level2/ft_popen/`)
**Problem**: Implement a custom version of the `popen()` function.

**Features**:
- Process creation and management
- Pipe communication
- File descriptor handling

**System Calls Used**:
- `fork()`
- `pipe()`
- `dup2()`
- `execve()`

### 2. picoshell (`level2/picoshell/`)
**Problem**: Implement a minimal shell with basic command execution.

**Features**:
- Command parsing
- Process creation
- Built-in commands
- Signal handling

**System Calls Used**:
- `fork()`
- `execve()`
- `wait()`
- `signal()`

### 3. sandbox (`level2/sandbox/`)
**Problem**: Create a process sandbox for secure execution.

**Features**:
- Process isolation
- Resource limiting
- Security policies
- System call filtering

**System Calls Used**:
- `seccomp()`
- `setrlimit()`
- `chroot()`
- `unshare()`

## Level 3 - Advanced Challenges

### 1. argo (`level3/argo/`)
**Problem**: Implement an interpreter for the Argo programming language.

**Features**:
- Lexical analysis
- Syntax parsing
- Code execution
- Memory management

**Components**:
- Tokenizer
- Parser
- Virtual machine
- Standard library

### 2. vbc (`level3/vbc/`)
**Problem**: Implement a Virtual Bytecode Compiler.

**Features**:
- Source code compilation
- Bytecode generation
- Virtual machine execution
- Optimization passes

**Components**:
- Frontend compiler
- Intermediate representation
- Backend code generator
- Runtime environment

## Build System

### Master Makefile
Located at the root directory, provides targets for:
- `make all` - Build all projects
- `make debug` - Build with debug flags
- `make clean` - Clean all projects
- `make test` - Run tests
- `make install` - Install executables

### Individual Makefiles
Each project has its own Makefile with:
- Compilation flags
- Debug targets
- Test targets
- Clean targets

### Build Script
`build.sh` provides a convenient interface for:
- Building all projects
- Running tests
- Installing executables
- Cleaning build artifacts

## Code Quality Standards

### C Coding Standards
- Follow 42 coding standards
- Proper indentation (4 spaces)
- Function documentation
- Error handling
- Memory management

### File Organization
- Header files for declarations
- Source files for implementations
- Makefiles for build configuration
- Documentation files

### Testing
- Unit tests where applicable
- Integration tests for complex projects
- Manual testing scripts
- Performance benchmarks

## Development Workflow

### 1. Setup
```bash
git clone <repository>
cd 42-Exam04
make help
```

### 2. Development
```bash
# Build specific project
cd level1/n_queens
make

# Build all projects
make all

# Debug build
make debug
```

### 3. Testing
```bash
# Test specific project
cd level1/n_queens
make test

# Test all projects
make test
```

### 4. Installation
```bash
# Install all executables
make install

# Use build script
./build.sh all
```

## Performance Considerations

### Memory Management
- Proper allocation and deallocation
- Memory leak prevention
- Efficient data structures
- Resource cleanup

### Algorithm Optimization
- Time complexity analysis
- Space complexity optimization
- Cache-friendly algorithms
- Parallel processing where applicable

### System Programming
- Efficient system calls
- Proper signal handling
- Resource management
- Security considerations

## Troubleshooting

### Common Issues
1. **Compilation Errors**: Check compiler flags and dependencies
2. **Runtime Errors**: Verify input validation and error handling
3. **Memory Issues**: Use valgrind for memory leak detection
4. **Performance Issues**: Profile with gprof or similar tools

### Debugging Tools
- `gdb` - GNU debugger
- `valgrind` - Memory error detection
- `strace` - System call tracing
- `ltrace` - Library call tracing

## Contributing

This is a personal project for 42 Exam 04. The code serves as:
- Learning material for algorithmic concepts
- Reference for system programming techniques
- Example of proper C programming practices
- Demonstration of build system organization

## License

This project is for educational purposes as part of the 42 curriculum. 