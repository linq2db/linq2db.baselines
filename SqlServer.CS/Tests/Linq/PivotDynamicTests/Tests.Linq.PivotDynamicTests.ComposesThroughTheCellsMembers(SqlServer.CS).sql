-- SqlServer.CS SqlServer.2025
SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) > 16

-- SqlServer.CS SqlServer.2025
SELECT
	[r].[Key_1],
	[r].[Y2000],
	[r].[Y2010]
FROM
	(
		SELECT
			SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
			[g_1].[Category] as [Key_1],
			SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)) as [Y2010]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
ORDER BY
	[r].[Y2000]

