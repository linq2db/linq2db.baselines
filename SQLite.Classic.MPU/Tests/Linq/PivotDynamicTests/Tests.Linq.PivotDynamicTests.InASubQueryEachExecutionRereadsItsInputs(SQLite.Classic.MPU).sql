-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [V]
				FROM
					[CategorySales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [r]
		WHERE
			([r].[Key_1] = [c_1].[Category] OR [r].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND
			[r].[V] > 16
	)

