PROJECT_NAME = main
SRC_DIR = src
BUILD_DIR = mybuild
INTERFACE = stlink

OUTPUT = $(BUILD_DIR)/$(PROJECT_NAME)

LINKER_FLAGS = -T stm32f4_linker.ld  --Map $(OUTPUT).map --print-memory-usage

ASM_FILES =  $(wildcard $(SRC_DIR)/*.s)
OBJ = $(ASM_FILES:$(SRC_DIR)/%.s=$(BUILD_DIR)/%.o)

all : flash

flash : $(OUTPUT).elf
	openocd -f interface/$(INTERFACE).cfg -f target/stm32f4x.cfg -c "program $(OUTPUT).elf verify reset exit"

$(OUTPUT).elf : $(OBJ)
	arm-none-eabi-ld $(LINKER_FLAGS) $^ -o $@

$(BUILD_DIR)/%.o : $(SRC_DIR)/%.s | $(BUILD_DIR)
	 arm-none-eabi-as -g -c $^ -o $@

build : $(OUTPUT).elf
	@echo "Project built successfully"

gdb : flash
	openocd -f interface/$(INTERFACE).cfg -f target/stm32f4x.cfg

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

clean :
	rm -r $(BUILD_DIR) || true
