NAME = libft.a
SRC_DIR = src
OBJ_DIR = obj
INC_DIR = includes

SRC = $(SRC_DIR)/ft_strlen.c $(SRC_DIR)/ft_atoi.c $(SRC_DIR)/ft_isalpha.c $(SRC_DIR)/ft_isdigit.c $(SRC_DIR)/ft_isalnum.c \
      $(SRC_DIR)/ft_isascii.c $(SRC_DIR)/ft_isprint.c $(SRC_DIR)/ft_memset.c $(SRC_DIR)/ft_bzero.c $(SRC_DIR)/ft_memcpy.c \
      $(SRC_DIR)/ft_memmove.c $(SRC_DIR)/ft_strlcpy.c $(SRC_DIR)/ft_strlcat.c $(SRC_DIR)/ft_toupper.c $(SRC_DIR)/ft_tolower.c \
      $(SRC_DIR)/ft_strchr.c $(SRC_DIR)/ft_strrchr.c $(SRC_DIR)/ft_strncmp.c $(SRC_DIR)/ft_memchr.c $(SRC_DIR)/ft_memcmp.c \
      $(SRC_DIR)/ft_strnstr.c $(SRC_DIR)/ft_atoi.c $(SRC_DIR)/ft_calloc.c $(SRC_DIR)/ft_strdup.c $(SRC_DIR)/ft_substr.c \
      $(SRC_DIR)/ft_strjoin.c $(SRC_DIR)/ft_strtrim.c $(SRC_DIR)/ft_split.c $(SRC_DIR)/ft_itoa.c $(SRC_DIR)/ft_strmapi.c \
      $(SRC_DIR)/ft_striteri.c $(SRC_DIR)/ft_putchar_fd.c $(SRC_DIR)/ft_putstr_fd.c $(SRC_DIR)/ft_putendl_fd.c $(SRC_DIR)/ft_putnbr_fd.c

BONUS = $(SRC_DIR)/ft_lstnew_bonus.c $(SRC_DIR)/ft_lstadd_front_bonus.c $(SRC_DIR)/ft_lstsize_bonus.c \
        $(SRC_DIR)/ft_lstlast_bonus.c $(SRC_DIR)/ft_lstadd_back_bonus.c $(SRC_DIR)/ft_lstdelone_bonus.c \
        $(SRC_DIR)/ft_lstclear_bonus.c $(SRC_DIR)/ft_lstiter_bonus.c  $(SRC_DIR)/ft_lstmap_bonus.c

OBJ = $(SRC:.c=.o)
BONUS_OBJ = $(BONUS:.c=.o)

CFLAGS = -Wall -Wextra -Werror -I$(INC_DIR)
CC = cc
RM = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(NAME) $(BONUS_OBJ)
	ar rc $(NAME) $(BONUS_OBJ)

%.o: %.c libft.h
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	$(RM) $(OBJ) $(BONUS_OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean re bonus

