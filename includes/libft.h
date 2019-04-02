/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <lugibone@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/02 15:23:19 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/02 15:39:33 by lugibone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef HEADER_H
# define HEADER_H
# include <unistd.h>
# include <stdlib.h>

void	ft_putstr(char *str);
int		ft_strlen(char *str);
int		ft_atoi(char *str);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int 	ft_isdigit(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
char 	*ft_strcat(char *dest, char *src);
char	*ft_strchr(const char *str, int c);
int 	ft_strcmp(char *s1, char *s2);
char	*ft_strcpy(char *dest, char *src);
char	*ft_strdup(char *src);
size_t	ft_strlcat(char *dest, const char *src, size_t size);
char	*ft_strncat(char *dest, char *src, int nb);
int 	ft_strncmp(char *s1, char *s2, unsigned int n);
char	*ft_strncpy(char *dest, char *src, unsigned int n);
char	*ft_strnstr(char *str, char *to_find, size_t len);
char	*ft_strrchr(char *s, int c);
char	*ft_strstr(char *str, char *to_find);
int		ft_tolower(int c);
int		ft_toupper(int c);

#endif

