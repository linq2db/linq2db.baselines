BeforeExecute
-- SQLite.Classic SQLite

SELECT
	SUM([t1].[MoneyValue]),
	[t1].[Year_1],
	[t1].[Month_1]
FROM
	(
		SELECT
			CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER) as [Month_1],
			CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER) as [Year_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Month_1],
	[t1].[Year_1]

