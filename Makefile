# 42 Exam 04 - Master Makefile
# Builds all projects in the repository

# Compiler settings
CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99
DEBUG_CFLAGS = -Wall -Wextra -g -std=c99

# Directories
LEVEL1_DIR = level1
LEVEL2_DIR = level2
LEVEL3_DIR = level3

# Level 1 projects
LEVEL1_PROJECTS = n_queens permutation power_set rip tsp

# Level 2 projects
LEVEL2_PROJECTS = ft_popen picoshell sandbox

# Level 3 projects
LEVEL3_PROJECTS = argo vbc

# All projects
ALL_PROJECTS = $(LEVEL1_PROJECTS) $(LEVEL2_PROJECTS) $(LEVEL3_PROJECTS)

# Default target
all: $(ALL_PROJECTS)

# Level 1 targets
$(LEVEL1_PROJECTS): %: $(LEVEL1_DIR)/%/Makefile
	@echo "Building $@..."
	@$(MAKE) -C $(LEVEL1_DIR)/$@

# Level 2 targets
$(LEVEL2_PROJECTS): %: $(LEVEL2_DIR)/%/Makefile
	@echo "Building $@..."
	@$(MAKE) -C $(LEVEL2_DIR)/$@

# Level 3 targets
$(LEVEL3_PROJECTS): %: $(LEVEL3_DIR)/%/Makefile
	@echo "Building $@..."
	@$(MAKE) -C $(LEVEL3_DIR)/$@

# Debug build
debug: CFLAGS = $(DEBUG_CFLAGS)
debug: all

# Clean all projects
clean:
	@echo "Cleaning all projects..."
	@for project in $(LEVEL1_PROJECTS); do \
		if [ -f $(LEVEL1_DIR)/$$project/Makefile ]; then \
			$(MAKE) -C $(LEVEL1_DIR)/$$project clean; \
		fi \
	done
	@for project in $(LEVEL2_PROJECTS); do \
		if [ -f $(LEVEL2_DIR)/$$project/Makefile ]; then \
			$(MAKE) -C $(LEVEL2_DIR)/$$project clean; \
		fi \
	done
	@for project in $(LEVEL3_PROJECTS); do \
		if [ -f $(LEVEL3_DIR)/$$project/Makefile ]; then \
			$(MAKE) -C $(LEVEL3_DIR)/$$project clean; \
		fi \
	done

# Test all projects
test: all
	@echo "Running tests..."
	@echo "Note: Individual project tests should be run from their respective directories"

# Install (copy executables to bin directory)
install: all
	@mkdir -p bin
	@echo "Installing executables to bin/..."
	@for project in $(LEVEL1_PROJECTS); do \
		if [ -f $(LEVEL1_DIR)/$$project/$$project ]; then \
			cp $(LEVEL1_DIR)/$$project/$$project bin/; \
		fi \
	done
	@for project in $(LEVEL2_PROJECTS); do \
		if [ -f $(LEVEL2_DIR)/$$project/$$project ]; then \
			cp $(LEVEL2_DIR)/$$project/$$project bin/; \
		fi \
	done
	@for project in $(LEVEL3_PROJECTS); do \
		if [ -f $(LEVEL3_DIR)/$$project/$$project ]; then \
			cp $(LEVEL3_DIR)/$$project/$$project bin/; \
		fi \
	done

# Help target
help:
	@echo "42 Exam 04 - Available targets:"
	@echo "  all      - Build all projects"
	@echo "  debug     - Build all projects with debug flags"
	@echo "  clean     - Clean all projects"
	@echo "  test      - Run tests (if available)"
	@echo "  install   - Install executables to bin/"
	@echo "  help      - Show this help message"
	@echo ""
	@echo "Individual projects:"
	@echo "  Level 1: $(LEVEL1_PROJECTS)"
	@echo "  Level 2: $(LEVEL2_PROJECTS)"
	@echo "  Level 3: $(LEVEL3_PROJECTS)"

.PHONY: all debug clean test install help $(ALL_PROJECTS) 