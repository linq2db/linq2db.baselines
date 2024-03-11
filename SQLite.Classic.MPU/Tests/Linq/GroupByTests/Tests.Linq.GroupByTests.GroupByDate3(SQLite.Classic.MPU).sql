BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Sum([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			Date(printf('%04d', Cast(StrFTime('%Y', [grp].[DateTimeValue]) as int)) || '-' || printf('%02d', Cast(StrFTime('%m', [grp].[DateTimeValue]) as int)) || '-01') as [c1],
			[grp].[MoneyValue],
			Cast(StrFTime('%Y', Date(printf('%04d', Cast(StrFTime('%Y', [grp].[DateTimeValue]) as int)) || '-' || printf('%02d', Cast(StrFTime('%m', [grp].[DateTimeValue]) as int)) || '-01')) as int) as [Year_1],
			Cast(StrFTime('%m', Date(printf('%04d', Cast(StrFTime('%Y', [grp].[DateTimeValue]) as int)) || '-' || printf('%02d', Cast(StrFTime('%m', [grp].[DateTimeValue]) as int)) || '-01')) as int) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

