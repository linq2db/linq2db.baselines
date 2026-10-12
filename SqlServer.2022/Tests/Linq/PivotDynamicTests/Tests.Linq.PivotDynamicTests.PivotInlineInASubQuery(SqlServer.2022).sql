-- SqlServer.2022
SELECT DISTINCT
	[c_1].[Category]
FROM
	[CategorySales] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[r].[Category] as [Key_1],
					SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) as [Y2010]
				FROM
					[CategorySales] [r]
				WHERE
					[r].[Amount] > 0
				GROUP BY
					[r].[Category]
			) [r_1]
		WHERE
			([r_1].[Key_1] = [c_1].[Category] OR [r_1].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r_1].[Y2010] > 16
	)

