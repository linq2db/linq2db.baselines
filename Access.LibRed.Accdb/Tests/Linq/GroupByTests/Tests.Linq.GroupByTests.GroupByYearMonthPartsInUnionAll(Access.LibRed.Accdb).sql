-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	SUM([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart('yyyy', CASE
				WHEN [n].[DATUM] IS NOT NULL THEN [n].[DATUM]
				ELSE #0001-01-01#
			END) as [Year_1],
			DatePart('m', CASE
				WHEN [n].[DATUM] IS NOT NULL THEN [n].[DATUM]
				ELSE #0001-01-01#
			END) as [Month_1],
			[n].[SKUPAJ]
		FROM
			[GroupByYearMonthPartsTable] [n]
		WHERE
			[n].[DATUM] < DateSerial(2019, 1, 1)
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
			DatePart('yyyy', CASE
				WHEN [n_1].[DATUM] IS NOT NULL THEN [n_1].[DATUM]
				ELSE #0001-01-01#
			END) as [Year_1],
			DatePart('m', CASE
				WHEN [n_1].[DATUM] IS NOT NULL THEN [n_1].[DATUM]
				ELSE #0001-01-01#
			END) as [Month_1],
			[n_1].[SKUPAJ]
		FROM
			[GroupByYearMonthPartsTable] [n_1]
		WHERE
			[n_1].[DATUM] >= DateSerial(2019, 1, 1)
	) [t2]
GROUP BY
	[t2].[Year_1],
	[t2].[Month_1]

