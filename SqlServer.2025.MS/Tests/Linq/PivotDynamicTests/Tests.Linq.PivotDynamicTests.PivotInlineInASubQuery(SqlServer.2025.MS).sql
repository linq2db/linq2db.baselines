-- SqlServer.2025.MS SqlServer.2025
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
					[g_1].[Category] as [Key_1],
					SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)) as [Y2010]
				FROM
					[CategorySales] [g_1]
				WHERE
					[g_1].[Amount] > 0
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[Y2010] > 16
	)

