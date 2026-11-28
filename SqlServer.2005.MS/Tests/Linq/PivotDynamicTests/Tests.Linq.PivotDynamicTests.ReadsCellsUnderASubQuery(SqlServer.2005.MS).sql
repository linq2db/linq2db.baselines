-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Category]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_1].[Category]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
WHERE
	[r].[Y2010] > 16

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Category]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_1].[Category]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
WHERE
	[r].[Y2010] > 16

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Category]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_1].[Category]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
WHERE
	[r].[Y2010] > 16

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[row_1].[Key_1],
	CAST(Floor([row_1].[Y2000]) AS Int)
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
WHERE
	[row_1].[Y2000] IS NOT NULL

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[u].[Key_1]
FROM
	(
		SELECT
			CAST(Floor([row_1].[Y2000]) AS Int) as [Value_1],
			[row_1].[Key_1]
		FROM
			(
				SELECT
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [Y2000],
					[g_1].[Category] as [Key_1]
				FROM
					[Sales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [row_1]
		WHERE
			[row_1].[Y2000] IS NOT NULL
	) [u]
WHERE
	[u].[Value_1] = 10

