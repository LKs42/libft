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
CC = gcc
CCC = gcc -c
CCF = -Wall -Werror -Wextra
SRC = ft_atoi.c\
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
O_FILES = $(SRC:.c=.o)

INCLUDES = .

all: $(NAME)

$(NAME):
	@$(CCC) $(CCF) $(SRC) -I $(INCLUDES)
	@$(AR) $(NAME) $(O_FILES)
clean:
	@rm -f $(O_FILES)
fclean: clean
	@rm -f $(NAME)
re: fclean all

