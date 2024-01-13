BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Sum([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			Cast(StrFTime('%m', [grp].[DateTimeValue]) as int) as [Month_1],
			Cast(StrFTime('%Y', [grp].[DateTimeValue]) as int) as [Year_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Month_1],
	[grp_1].[Year_1]

