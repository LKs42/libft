/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/03 19:14:12 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/05 16:42:04 by lugibone         ###   ########.fr       */
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
	if (result == NULL)
		return (NULL);
	i = -1;
	while (s[++i])
		result[i] = (*f)(s[i]);
	return (result);
}
