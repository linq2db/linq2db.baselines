-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	SUM([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, IIF([n].[DATUM] IS NOT NULL, [n].[DATUM], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))) as [Year_1],
			DatePart(month, IIF([n].[DATUM] IS NOT NULL, [n].[DATUM], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))) as [Month_1],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			[n].[DATUM] < DATETIME2FROMPARTS(2019, 1, 1, 0, 0, 0, 0, 3)
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
			DatePart(year, IIF([n_1].[DATUM] IS NOT NULL, [n_1].[DATUM], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))) as [Year_1],
			DatePart(month, IIF([n_1].[DATUM] IS NOT NULL, [n_1].[DATUM], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))) as [Month_1],
			[n_1].[SKUPAJ]
		FROM
			[Issue3761Table] [n_1]
		WHERE
			[n_1].[DATUM] >= DATETIME2FROMPARTS(2019, 1, 1, 0, 0, 0, 0, 3)
	) [t2]
GROUP BY
	[t2].[Year_1],
	[t2].[Month_1]

