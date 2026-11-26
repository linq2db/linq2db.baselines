-- SqlServer.2012
SELECT
	[c_1].[Id],
	[r_1].[Key_1],
	[r_1].[Y2010]
FROM
	[CategorySales] [c_1]
		CROSS APPLY (
			SELECT
				SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) as [Y2010],
				[r].[Category] as [Key_1]
			FROM
				[CategorySales] [r]
			WHERE
				[r].[Category] = [c_1].[Category] OR [r].[Category] IS NULL AND [c_1].[Category] IS NULL
			GROUP BY
				[r].[Category]
		) [r_1]

