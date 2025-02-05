NAME = libft.a
SRC_DIR = src
OBJ_DIR = obj
INC_DIR = includes

SRC = $(SRC_DIR)/ft_strlen.c
OBJ = $(OBJ_DIR)/ft_strlen.o

CFLAGS = -Wall -Wextra -Werror -I$(INC_DIR)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ): $(SRC)
	gcc $(CFLAGS) -c $(SRC) -o $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

