# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfeijoo <cfeijoo@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/24 16:52:10 by cfeijoo           #+#    #+#              #
#    Updated: 2014/02/12 14:30:52 by cfeijoo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libsellowiana

INCLUDEFOLDERS = -I./includes/ -I../libft/includes/
LIBFOLDERS = -L../libft/ -L/usr/X11/lib/ -L/usr/X11/include
LIBS = -lmlx -lXext -lX11 -lft -lm

CC = gcc
AR = ar
CFLAGS = -Wall -Wextra -Werror

CFILES	=	draw_vector.c			\
			draw_aa_vector.c		\
			display_vector.c		\
			transformations.c		\
			fade.c					\
			blend_colors.c

OFILES = $(CFILES:.c=.o)

all: $(NAME)

$(NAME):
	$(CC) -c $(CFILES) $(INCLUDEFOLDERS) $(CFLAGS)
	$(AR) rcs $(NAME).a $(OFILES)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME).a

re: fclean all
