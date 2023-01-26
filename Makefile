# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jutrera- <jutrera-@student.42madrid.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/27 18:05:52 by jutrera-          #+#    #+#              #
#    Updated: 2022/10/15 11:35:42 by jutrera-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= 	libft.a
SRCS	=	$(wildcard ./srcs/*.c)
OBJS		= ${SRCS:.c=.o}
CC			= gcc
FLAGS		= -Wall -Wextra -Werror -I.\include

all		:	${NAME}
			@echo "libft.a created successfully !"
.c.o	:
			@echo "Making object files !....\c"
			@${CC} ${FLAGS} -c $< -o ${<:.c=.o}
			@echo "Done !"
${NAME}	:	${OBJS}
			@echo "Linking object files !....\c"
			@ar -rcs ${NAME} ${OBJS}
			@echo "Done !"
clean	:
			@rm -f ${OBJS}
			@echo "Object files deleted !"
fclean	:	clean
			@rm -f ${NAME}
			@echo "Binary file deleted !"
re		:	fclean all
.PHONY	:	all clean fclean re
