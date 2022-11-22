##
## EPITECH PROJECT, 2019
## libasm
## File description:
## Makefile
##

NAME	= libasm.so

CC = ld
ASM	= nasm

RM	= rm -f

SRCS	= 	strlen.asm	\
			strcmp.asm	\
			strchr.asm	\
			memset.asm	\
			memcpy.asm	\
			strncmp.asm \
			strpbrk.asm \
			strcspn.asm \

OBJS	=	$(SRCS:.asm=.o)

FLAGS = -f elf64

all: $(NAME)

$(NAME): 	$(OBJS)
	 		$(CC) -shared -fPIC -o $(NAME) $(OBJS)
	 		make clean

%.o : %.asm
	$(ASM) $(FLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
