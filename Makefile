SRC = ft_strlen.c
OBJ = SRC.c=.o
NAME = libasm.a
FLAGS = gcc -Wall -Wextra -Werror

all:
	 nasm -fmacho64 $(SRC)
	 $(FLAGS) main.c 
