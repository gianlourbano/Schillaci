# Java Commands
JC = javac
JR = java

# Directories
LIB_DIR = mnkgame
SRC_DIR = src
BUILD_DIR = build

# Packages and classes
MAIN_CLASS = mnkgame.MNKGame
PLAYER_CLASS = schillaci.Schillaci
QUASI_RANDOM = mnkgame.QuasiRandomPlayer
PLAYER_TESTER_CLASS = mnkgame.MNKPlayerTester

# Command line options
OPTIONS = -cp "$(BUILD_DIR)/"

# Source files
PLAYER_FILE = schillaci/Schillaci.java

# Default parameters (can also be specified from command line"
MNK = 3 3 3
REPS = 1

run: 
	@echo "Running..."
	@$(JR) $(OPTIONS) $(PLAYER_TESTER_CLASS) $(MNK) $(PLAYER_CLASS) $(QUASI_RANDOM) -r $(REPS)

build: clean-build
	@echo "Building..."
	@mkdir -p $(BUILD_DIR)
	@$(JC) -cp "$(SRC_DIR)/" -d "$(BUILD_DIR)/" -sourcepath "$(SRC_DIR)/" "$(SRC_DIR)/$(PLAYER_FILE)"

# Removes both binaries and documentation
clean: clean-build 

# Removes binaries
clean-build:
	@$(RM) -rf $(BUILD_DIR)