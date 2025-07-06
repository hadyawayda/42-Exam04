#!/bin/bash

# 42 Exam 04 Build Script
# This script helps build and test all projects

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
check_prerequisites() {
    print_status "Checking prerequisites..."
    
    if ! command_exists gcc; then
        print_error "GCC compiler not found. Please install GCC."
        exit 1
    fi
    
    if ! command_exists make; then
        print_error "Make utility not found. Please install Make."
        exit 1
    fi
    
    print_success "Prerequisites check passed"
}

# Build all projects
build_all() {
    print_status "Building all projects..."
    
    if make all; then
        print_success "All projects built successfully"
    else
        print_error "Build failed"
        exit 1
    fi
}

# Test specific projects
test_projects() {
    print_status "Testing projects..."
    
    # Test n_queens
    if [ -f "level1/n_queens/n_queens" ]; then
        print_status "Testing n_queens..."
        cd level1/n_queens
        echo "Testing n=4:"
        ./n_queens 4
        echo "Testing n=2:"
        ./n_queens 2
        cd ../..
        print_success "n_queens tests completed"
    fi
    
    # Add more project tests here as needed
}

# Clean all projects
clean_all() {
    print_status "Cleaning all projects..."
    make clean
    print_success "Clean completed"
}

# Install executables
install_executables() {
    print_status "Installing executables..."
    make install
    print_success "Installation completed"
}

# Show help
show_help() {
    echo "42 Exam 04 Build Script"
    echo ""
    echo "Usage: $0 [OPTION]"
    echo ""
    echo "Options:"
    echo "  build     - Build all projects"
    echo "  test      - Test all projects"
    echo "  clean     - Clean all projects"
    echo "  install   - Install executables to bin/"
    echo "  all       - Build, test, and install"
    echo "  help      - Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 build    # Build all projects"
    echo "  $0 test     # Test all projects"
    echo "  $0 all      # Full build, test, and install"
}

# Main script logic
main() {
    case "${1:-help}" in
        "build")
            check_prerequisites
            build_all
            ;;
        "test")
            check_prerequisites
            test_projects
            ;;
        "clean")
            clean_all
            ;;
        "install")
            check_prerequisites
            build_all
            install_executables
            ;;
        "all")
            check_prerequisites
            build_all
            test_projects
            install_executables
            ;;
        "help"|*)
            show_help
            ;;
    esac
}

# Run main function with all arguments
main "$@" 