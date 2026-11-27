-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

