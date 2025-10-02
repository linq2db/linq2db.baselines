BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	SUM([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, CASE
				WHEN [n].[DATUM] IS NOT NULL THEN [n].[DATUM]
				ELSE '1753-01-01'
			END) as [Year_1],
			DatePart(month, CASE
				WHEN [n].[DATUM] IS NOT NULL THEN [n].[DATUM]
				ELSE '1753-01-01'
			END) as [Month_1],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			[n].[DATUM] < CAST('2019-01-01' AS DateTime)
	) [t1]
GROUP BY
	[t1].[Year_1],
	[t1].[Month_1]
UNION ALL
SELECT
	[t2].[Year_1],
	[t2].[Month_1],
	SUM([t2].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, CASE
				WHEN [n_1].[DATUM] IS NOT NULL THEN [n_1].[DATUM]
				ELSE '1753-01-01'
			END) as [Year_1],
			DatePart(month, CASE
				WHEN [n_1].[DATUM] IS NOT NULL THEN [n_1].[DATUM]
				ELSE '1753-01-01'
			END) as [Month_1],
			[n_1].[SKUPAJ]
		FROM
			[Issue3761Table] [n_1]
		WHERE
			[n_1].[DATUM] >= CAST('2019-01-01' AS DateTime)
	) [t2]
GROUP BY
	[t2].[Year_1],
	[t2].[Month_1]

