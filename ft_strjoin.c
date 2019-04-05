/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/04 15:04:44 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/05 17:00:23 by lugibone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char			*result;
	unsigned int	s1size;
	unsigned int	s2size;
	unsigned int	i;
	unsigned int	j;

	s1size = (unsigned int)ft_strlen((char*)s1);
	s2size = (unsigned int)ft_strlen((char*)s2);
	i = -1;
	result = ft_strnew(s1size + s2size);
	if (result == NULL)
		return (NULL);
	while (++i < s1size)
		result[i] = s1[i];
	j = -1;
	while (++j < s2size)
		result[i + j] = s2[j];
	return (result);
}
