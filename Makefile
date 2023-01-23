# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rapdos-s <rapdos-s@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/23 15:44:27 by rapdos-s          #+#    #+#              #
#    Updated: 2023/01/23 16:01:02 by rapdos-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = theme.vsix
THEME = minimal-theme.json
README = README.md
PACKAGE = package.json
LICENSE = LICENSE
SRC = ${THEME} ${README} ${PACKAGE} ${LICENSE}
RM = rm -f
ZIP = zip

all: ${NAME}

$(NAME):
	${ZIP} ${NAME} ${SRC}

fclean:
	${RM} ${NAME} 

re: fclean all

print_var:
	@echo NAME = ${NAME}
	@echo THEME = ${THEME}
	@echo README = ${README}
	@echo PACKAGE = ${PACKAGE}
	@echo LICENSE = ${LICENSE}
	@echo SRC = ${SRC}
	@echo RM = ${RM}
	@echo ZIP = ${ZIP}
