/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/03 19:14:12 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/04 12:52:01 by lugibone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmap(char const *s, char (*f)(char))
{
	size_t	i;
	char	*result;

	if (!s || !f)
		return (NULL);
	result = ft_strnew(ft_strlen((char*)s));
	i = -1;
	while (s[++i])
		result[i] = (*f)(s[i]);
	return (result);
}
