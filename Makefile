CC 					= g++

RM 					= rm -rf

CPPFLAGS 			+= -Wextra -Wall -Werror -g
CPPFLAGS 			+= -I.

LDFLAGS 			+= $(CPPFLAGS)

NAME 				= filePumper

SRCS				= main.cpp

OBJS 				= $(SRCS:.cpp=.o)


$(NAME): 			$(OBJS)
					$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

all: 				$(NAME)

clean:
					$(RM) $(OBJS)

fclean: 			clean
					$(RM) $(NAME).exe

re:					fclean all

.PHONY: 			all clean fclean re
