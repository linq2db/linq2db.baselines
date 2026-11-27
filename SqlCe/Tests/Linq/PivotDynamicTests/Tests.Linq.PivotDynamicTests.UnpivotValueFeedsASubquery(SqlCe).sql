-- SqlCe
SELECT
	[row_1].[Key_1],
	[t1].[Rows_1]
FROM
	(
		SELECT
			[g_1].[Category] as [Key_1],
			SUM(CASE
				WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2000]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Rows_1]
			FROM
				[CategorySales] [o]
			WHERE
				[o].[Amount] = [row_1].[Y2000] OR [o].[Amount] IS NULL AND [row_1].[Y2000] IS NULL
		) [t1]
WHERE
	[row_1].[Y2000] IS NOT NULL

