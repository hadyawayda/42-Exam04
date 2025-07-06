/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   n_queens.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: 42 Student <student@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/01 00:00:00 by 42 Student       #+#    #+#             */
/*   Updated: 2024/01/01 00:00:00 by 42 Student      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * Check if placing a queen at position (col, row) is safe
 * @param tab: Array representing queen positions
 * @param col: Current column
 * @param row: Row to check
 * @return: 1 if safe, 0 otherwise
 */
int	is_safe(int *tab, int col, int row)
{
	int	i;

	for (i = 0; i < col; i++)
	{
		// Check same row or diagonal
		if (tab[i] == row || abs(i - col) == abs(tab[i] - row))
			return (0);
	}
	return (1);
}

/**
 * Recursively solve the N-Queens problem using backtracking
 * @param tab: Array to store queen positions
 * @param n: Board size
 * @param col: Current column being processed
 */
void	solve(int *tab, int n, int col)
{
	int	i;

	if (col == n)
	{
		// Print solution
		for (i = 0; i < n; i++)
		{
			printf("%d", tab[i]);
			if (i < n - 1)
				printf(" ");
		}
		printf("\n");
		return ;
	}
	
	// Try placing queen in each row of current column
	for (i = 0; i < n; i++)
	{
		if (is_safe(tab, col, i))
		{
			tab[col] = i;
			solve(tab, n, col + 1);
		}
	}
}

/**
 * Main function - N-Queens puzzle solver
 * Usage: ./n_queens <board_size>
 */
int	main(int ac, char **av)
{
	int	n;
	int	*tab;

	// Check argument count
	if (ac != 2)
	{
		fprintf(stderr, "Usage: %s <board_size>\n", av[0]);
		return (1);
	}

	// Parse board size
	n = atoi(av[1]);
	if (n <= 0)
	{
		fprintf(stderr, "Error: Board size must be positive\n");
		return (1);
	}

	// Allocate memory for queen positions
	tab = calloc(n, sizeof(int));
	if (!tab)
	{
		fprintf(stderr, "Error: Memory allocation failed\n");
		return (1);
	}

	// Solve and print all solutions
	solve(tab, n, 0);

	// Clean up
	free(tab);
	return (0);
}