-- SQLite.MS SQLite
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
					SUM(CASE
						WHEN [r].[Year] = 2010 THEN [r].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [r]
				WHERE
					[r].[Amount] > 0
				GROUP BY
					[r].[Category]
			) [r_1]
		WHERE
			([r_1].[Key_1] = [c_1].[Category] OR [r_1].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r_1].[V] > 16
	)

-- SQLite.MS SQLite
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
					SUM(CASE
						WHEN [r].[Year] = 2000 THEN [r].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [r]
				WHERE
					[r].[Amount] > 0
				GROUP BY
					[r].[Category]
			) [r_1]
		WHERE
			([r_1].[Key_1] = [c_1].[Category] OR [r_1].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r_1].[V] > 16
	)

-- SQLite.MS SQLite
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
					SUM(CASE
						WHEN [r].[Year] = 2010 THEN [r].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [r]
				WHERE
					[r].[Amount] > 0
				GROUP BY
					[r].[Category]
			) [r_1]
		WHERE
			([r_1].[Key_1] = [c_1].[Category] OR [r_1].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r_1].[V] > 16
	)

