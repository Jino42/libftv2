/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntoniolo <ntoniolo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/03 12:15:38 by ntoniolo          #+#    #+#             */
/*   Updated: 2018/07/06 16:50:47 by ntoniolo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdlib.h>
# include <unistd.h>
# include <string.h>
# include <stdbool.h>
# include "get_next_line.h"
# include "ft_printf.h"
# include "btree.h"

typedef	struct	s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;
}				t_list;

int				ft_atoi(const char *nptr);
int				ft_faequal(float a, float b);
float			ft_fmax(const float a, const float b);
int				ft_isalpha(int c);
int				ft_isdigit(int c);
int				ft_isalnum(int c);
int				ft_isprint(int c);
int				ft_toupper(int c);
int				ft_tolower(int c);
void			*ft_memnew(void *ptr, size_t mem_size);
int				ft_isascii(int c);
size_t			ft_strlen (const char *s);
char			*ft_strcpy(char *dest, const char *src);
int				ft_strcmp(const char *s1, const char *s2);
char			*ft_strdup(const char *s);
char			*ft_strncpy(char *dest, const char *src, size_t n);
int				ft_strncmp(const char *s1, const char *s2, size_t n);
char			*ft_strchr(const char *s, int c);
char			*ft_strrchr(const char *s, int c);
char			*ft_strstr(const char *big, const char *little);
char			*ft_strnstr(const char *big, const char *little, size_t len);
void			*ft_memset (void *s, int c, size_t n);
void			ft_bzero(void *s, size_t n);
void			*ft_memcpy(void *dest, const void *src, size_t n);
bool			ft_error(char *string, bool (*func)(void *gen), void *gen);
int				ft_ret_error(char *str);
void			*ft_memccpy(void *dest, const void *src, int c, size_t n);
void			*ft_memcpy_offset(void *dest, const void *src,
											size_t offset, size_t n);
void			*ft_memmove(void *dest, const void *src, size_t n);
void			*ft_memchr(const void *s, int c, size_t n);
int				ft_memcmp(const void *s1, const void *s2, size_t n);
char			*ft_strcat(char *dest, const char *src);
char			*ft_strncat(char *dest, const char *src, size_t n);
size_t			ft_strlcat(char *dest, const char *src, size_t size);
void			ft_strclr(char *s);
void			ft_putchar_fd(char c, int fd);
void			ft_putstr(char const *s);
void			ft_putchar(char c);
void			ft_putnbr(long int n);
void			ft_putstr_fd(char const *s, int fd);
void			ft_putnbr_fd(long int n, int fd);
void			ft_putendl(char const *s);
void			ft_putendl_fd(char const *s, int fd);
void			*ft_memalloc(size_t size);
char			*ft_strnew(size_t size);
void			ft_memdel(void **ap);
void			*ft_memrealloc(void *ptr, size_t size_old, size_t size_new);
void			ft_strdel(char **as);
void			ft_striter(char *s, void (*f)(char *));
void			ft_striteri(char *s, void (*f)(unsigned int, char *));
int				ft_strequ(char const *s1, char const *s2);
int				ft_strnequ(char const *s1, char const *s2, size_t n);
char			*ft_strjoin(char const *s1, char const *s2);
char			*ft_strsub(char const *s, unsigned int start, size_t len);
char			*ft_strtrim(char const *s);
char			*ft_strmapi(char const *s, char (*f)(unsigned int, char));
char			*ft_strmap(char const *s, char (*f)(char));
char			*ft_itoa(long long int n);
char			**ft_strsplit(char const *s, char c);
t_list			*ft_lstnew(void const *content, size_t content_size);
void			ft_lstdelone(t_list **alst, void (*del)(void *, size_t));
void			ft_lstdel(t_list **alst, void (*del)(void *, size_t));
void			ft_lstadd(t_list **alst, t_list *new);
int				ft_lstlen(const t_list *l);
void			ft_lstiter(t_list *lst, void (*f)(t_list *elem));
t_list			*ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem));
void			ft_lstinsert(t_list **alst, t_list *new);
char			*ft_itoa_base(long long int n, int base);
int				ft_atoi_base(const char *str, int base);
int				ft_abs(int nb);
int				ft_isin(char *str, char c);

#endif
