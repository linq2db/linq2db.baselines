BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER) as [Month_1],
			CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER) as [Year_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Month_1],
	[grp_1].[Year_1]

