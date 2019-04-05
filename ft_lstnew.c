/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lugibone <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/05 13:50:08 by lugibone          #+#    #+#             */
/*   Updated: 2019/04/05 14:09:51 by lugibone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void const *content, size_t content_size)
{
	t_list *node;

	node = malloc(sizeof(t_list) + content_size);
	if (node)
	{
		node->next = NULL;
		if (content == NULL)
		{
			node->content = NULL;
			node->content_size = 0;
		}
		else
		{
			node->content = (void*)content;
			node->content_size = content_size;
		}
	}
	return (node);
}
