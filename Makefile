# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lugibone <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/02 15:19:01 by lugibone          #+#    #+#              #
#    Updated: 2019/04/03 16:53:39 by lugibone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CCC = gcc -c
CCF = -Wall -Werror -Wextra
SRC = *.c 
AR = ar rc
INCLUDES = .

all: $(NAME)

$(NAME):
	@$(CCC) $(CCF) $(SRC) -I $(INCLUDES)
	@$(AR) $(NAME) ft_*.o
clean:
	@rm -f ft_*.o
fclean: clean
	@rm -f $(NAME)
re: fclean all

