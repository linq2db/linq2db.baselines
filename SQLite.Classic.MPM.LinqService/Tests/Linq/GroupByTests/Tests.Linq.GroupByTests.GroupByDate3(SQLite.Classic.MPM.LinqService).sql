BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000') as [Date_1],
			[grp].[MoneyValue],
			CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000')) AS INTEGER) as [Year_1],
			CAST(strftime('%m', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000')) AS INTEGER) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

