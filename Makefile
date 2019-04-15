# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lugibone <lugibone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/02 15:19:01 by lugibone          #+#    #+#              #
#    Updated: 2019/04/10 16:39:30 by lugibone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CCC = gcc -c
FLAGS = -Wall -Werror -Wextra
SRC_PATH = .
OBJ_PATH = .
SRC_NAME = ft_atoi.c\
	ft_bzero.c\
	ft_convert_base.c\
	ft_isalnum.c\
	ft_isalpha.c\
	ft_isascii.c\
	ft_isdigit.c\
	ft_isprint.c\
	ft_iterative_factorial.c\
	ft_iterative_power.c\
	ft_itoa.c\
	ft_lstadd.c\
	ft_lstdel.c\
	ft_lstdelone.c\
	ft_lstiter.c\
	ft_lstmap.c\
	ft_lstnew.c\
	ft_memalloc.c\
	ft_memcpy.c\
	ft_memccpy.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_memdel.c\
	ft_memmove.c\
	ft_memset.c\
	ft_putchar_fd.c\
	ft_putendl.c\
	ft_putendl_fd.c\
	ft_putchar.c\
	ft_putstr.c\
	ft_putstr_fd.c\
	ft_putnbr.c\
	ft_putnbr_fd.c\
	ft_split_char.c\
	ft_split.c\
	ft_sqrt.c\
	ft_strcat.c\
	ft_strchr.c\
	ft_strclr.c\
	ft_strcmp.c\
	ft_strcpy.c\
	ft_strdel.c\
	ft_strdup.c\
	ft_strequ.c\
	ft_striter.c\
	ft_striteri.c\
	ft_strjoin.c\
	ft_strlcat.c\
	ft_strlen.c\
	ft_strmap.c\
	ft_strmapi.c\
	ft_strncat.c\
	ft_strncmp.c\
	ft_strncpy.c\
	ft_strnequ.c\
	ft_strnew.c\
	ft_strnstr.c\
	ft_strrchr.c\
	ft_strsplit.c\
	ft_strstr.c\
	ft_strsub.c\
	ft_strtrim.c\
	ft_tolower.c\
	ft_toupper.c
AR = ar rc
OBJ_NAME = $(SRC_NAME:.c=.o)
SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

# Colors
RESET = \0m
BOLD = \e[1m
DIM	=	\e[2m
ITALIC = \e[3m
UNDERLINE = \e[4m
BLINK = \e[5m
REVERSED = \e[7m
HIDDEN = \e[8m
DEFAULT = \e[39m
BLACK = \e[30m
RED = \e[31m
GREEN = \e[32m
YELLOW = \e[33m
BLUE = \e[34m
MAGENTA = \e[35m
CYAN = \e[36m
LIGHT_GRAY = \e[37m
DARK_GRAY = \e[90m
WHITE = \e[97m
BG_DEFAULT = \e[49m
BG_BLACK = \e[30m
BG_RED = \e[41m
BG_GREEN = \e[42m
BG_YELLOW = \e[43m
BG_BLUE = \e[44m
BG_MAGENTA = \e[45m
BG_CYAN = \e[46m
LIGHT_GRAY = \e[47m
DARK_GRAY = \e[100m
BG_WHITE = \e[107m

INCLUDES = .

all: $(NAME)

$(NAME): $(OBJ)
	@$(CCC) $(FLAGS) $(SRC) -I $(INCLUDES)
	@$(AR) $(NAME) $(O_FILES)
	@ranlib $(NAME)
$(OBJ_FOLDER)%.o: $(SRCS_FOLDER)%.c
	@$(CCC) $(FLAGS) $(SRC) -I $(INCLUDES) -c $< -o $@
clean:
	@rm -f $(OBJ)
fclean: clean
	@rm -f $(NAME)
re: fclean all

.PHONY: clean fclean re