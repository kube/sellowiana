# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfeijoo <cfeijoo@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/24 16:52:10 by cfeijoo           #+#    #+#              #
#    Updated: 2014/01/04 16:49:07 by cfeijoo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = guava

INCLUDEFOLDERS = -I./includes/ -I../libft/includes/
LIBFOLDERS = -L../libft/ -L/usr/X11/lib/ -L/usr/X11/include
LIBS = -lmlx -lXext -lX11 -lft -lguava

CC = /usr/bin/gcc
AR = /usr/bin/ar
CFLAGS = -Wall -Wextra -Werror -O4

CFILES	=	draw_vector.c			\
			draw_aa_vector.c		\
			display_vector.c		\
			get_map_data.c			\
			get_next_line.c			\
			transformations.c		\
			fade.c					\
			blend_colors.c			\
			init.c

OFILES = $(CFILES:.c=.o)

all: $(NAME)

$(NAME):
	$(CC) -c $(CFILES) $(INCLUDEFOLDERS) $(LIBFOLDERS) $(LIBS) $(CFLAGS)
	$(AR) rcs $(NAME).a $(OFILES)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME).a

re: fclean all
