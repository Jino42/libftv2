# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ntoniolo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/02 18:45:43 by ntoniolo          #+#    #+#              #
#    Updated: 2017/09/12 16:13:44 by ntoniolo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Werror -Wextra -g

SRC = basic/ft_memset.c \
	  basic/ft_bzero.c \
	  basic/ft_memcpy.c \
	  basic/ft_memccpy.c \
	  basic/ft_memmove.c \
	  basic/ft_memchr.c \
	  basic/ft_memcmp.c \
	  basic/ft_strlen.c \
	  basic/ft_strdup.c \
	  basic/ft_strcpy.c \
	  basic/ft_strcat.c \
	  basic/ft_strncat.c \
	  basic/ft_strlcat.c \
	  basic/ft_strchr.c \
	  basic/ft_strrchr.c \
	  basic/ft_strstr.c \
	  basic/ft_strnstr.c \
	  basic/ft_strcmp.c \
	  basic/ft_strncmp.c \
	  basic/ft_atoi.c \
	  basic/ft_isalpha.c \
	  basic/ft_isdigit.c \
	  basic/ft_isalnum.c \
	  basic/ft_isascii.c \
	  basic/ft_isprint.c \
	  basic/ft_toupper.c \
	  basic/ft_tolower.c \
	  basic/ft_memalloc.c \
	  basic/ft_memdel.c \
	  basic/ft_strnew.c \
	  basic/ft_strdel.c \
	  basic/ft_strclr.c \
	  basic/ft_striter.c \
	  basic/ft_striteri.c \
	  basic/ft_strmap.c \
	  basic/ft_strmapi.c \
	  basic/ft_strequ.c \
	  basic/ft_strnequ.c \
	  basic/ft_strsub.c \
	  basic/ft_strjoin.c \
	  basic/ft_strtrim.c \
	  basic/ft_strsplit.c \
	  basic/ft_itoa.c \
	  basic/ft_putchar.c \
	  basic/ft_putstr.c \
	  basic/ft_putendl.c \
	  basic/ft_putnbr.c \
	  basic/ft_putchar_fd.c \
	  basic/ft_putstr_fd.c \
	  basic/ft_putendl_fd.c \
	  basic/ft_putnbr_fd.c \
	  basic/ft_lstnew.c \
	  basic/ft_lstdelone.c \
	  basic/ft_lstdel.c \
	  basic/ft_lstadd.c \
	  basic/ft_lstiter.c \
	  basic/ft_lstmap.c \
	  basic/ft_strncpy.c \
	  basic/ft_atoi_base.c \
	  basic/ft_itoa_base.c \
	  basic/get_next_line.c \
	  basic/ft_abs.c \
	  basic/ft_error.c \
	  basic/ft_realloc.c \
	  basic/ft_lstinsert.c \
	  basic/ft_isin.c \
	  ft_printf/ft_printf.c \
	  ft_printf/check.c \
	  ft_printf/write_other.c \
	  ft_printf/write_width.c \
	  ft_printf/dipfoux.c \
	  ft_printf/sc_c.c \
	  ft_printf/sc_s.c \
	  ft_printf/preci.c \
	  ft_printf/arg_dipfoux.c \
	  ft_printf/write_f.c \
	  ft_printf/printf_loop.c \
	  ft_printf/ft_putbuffer.c \
	  ft_printf/tools_ft_printf/ft_multitoa_base.c \
	  ft_printf/tools_ft_printf/ft_putwchar.c \
	  ft_printf/tools_ft_printf/ft_putwstr.c \
	  ft_printf/tools_ft_printf/ft_sizebit.c \
	  ft_printf/tools_ft_printf/ft_wcharlen.c \
	  ft_printf/tools_ft_printf/ft_putnbrbase.c \
	  ft_printf/tools_ft_printf/ft_wctoc.c \
	  ft_printf/tools_ft_printf/ft_watoa.c \
	  ft_printf/tools_ft_printf/ft_wstrlen.c \
	  ft_printf/tools_ft_printf/ft_wstrnew.c \
	  ft_printf/tools_ft_printf/ft_wstrsub.c \
	  ft_printf/tools_ft_printf/ft_strjoinfree.c \
	  ft_printf/tools_ft_printf/ft_dotoa.c

OBJET = $(SRC:.c=.o)

.PHONY: all, clean, fclean, re

all: $(NAME)

$(NAME): $(OBJET)
	@ar rc $(NAME) $(OBJET) && ranlib $(NAME)

start :

end :

%.o: %.c
	gcc $(FLAGS) -o $@ -c $^

clean:
	@echo "Delete .o"
	@/bin/rm -f $(OBJET)

fclean: clean
	@echo "Delete .o & .a"
	@/bin/rm -f $(NAME)

re: fclean all
