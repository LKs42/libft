/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/02 13:14:28 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/05 17:34:12 by lugibone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strdup(const char *src)
{
	char	*result;
	int		size;
	int		i;

	i = 0;
	size = (int)ft_strlen(src);
	result = NULL;
	if (!(result = malloc(sizeof(char) * size + 1)))
		return (NULL);
	result = ft_strcpy(result, src);
	return (result);
}
