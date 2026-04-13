# Variables
CC = gcc
CFLAGS = -Wall -Werror -Wdeprecated -std=c99 -pedantic -O2 -Iinclude
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Liste des fichiers objets à générer (un par .c dans src)
OBJ = $(OBJ_DIR)/main.o $(OBJ_DIR)/utils.o $(OBJ_DIR)/transaction.o $(OBJ_DIR)/heap.o

# Nom de l'exécutable final
TARGET = $(BIN_DIR)/Assitant_financier

# Règle principale : construire l'exécutable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Règle pour compiler les fichiers .c en .o
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Nettoyage des fichiers générés
clean:
	rm -rf $(OBJ_DIR)/*.o $(TARGET)