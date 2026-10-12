-- SqlCe
SELECT
	[t3].[Key_1],
	[t2].[DistinctY2000],
	[t3].[RowsY2000]
FROM
	(
		SELECT
			[g_1].[Category] as [Key_1],
			COUNT(CASE
				WHEN [g_1].[Year] = 2000 THEN 1
				ELSE NULL
			END) as [RowsY2000]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DistinctY2000]
			FROM
				(
					SELECT DISTINCT
						[x].[Amount] as [DistinctY2000]
					FROM
						[CategorySales] [x]
					WHERE
						([t3].[Key_1] = [x].[Category] OR [t3].[Key_1] IS NULL AND [x].[Category] IS NULL) AND
						[x].[Year] = 2000
				) [t1]
		) [t2]

