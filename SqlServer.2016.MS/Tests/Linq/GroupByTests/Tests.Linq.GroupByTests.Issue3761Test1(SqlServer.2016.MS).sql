BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
			[n].[DATUM] < DATETIMEFROMPARTS(2019, 1, 1, 0, 0, 0, 0)
	) [t1]
GROUP BY
	[t1].[Year_1],
	[t1].[Month_1]

