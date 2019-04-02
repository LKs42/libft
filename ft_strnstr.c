/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <lugibone@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/02 15:01:17 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/02 17:28:23 by lugibone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strnstr(char *str, char *to_find, int len)
{
	int i;
	int j;

	i = 0;
	while (str[i] && i < len)
	{
		j = 0;
		while (str[i + j] == to_find[j] && str[i + j])
		{
			j++;
			if (to_find[j] == '\0')
				return (str + i);
		}
		i++;
	}
	return (0);
}
