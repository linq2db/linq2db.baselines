BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	SUM([grp_1].[MoneyValue]),
	CAST(strftime('%Y', [grp_1].[Date_1]) AS INTEGER),
	CAST(strftime('%m', [grp_1].[Date_1]) AS INTEGER)
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000') as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	SUM([grp_1].[MoneyValue]),
	CAST(strftime('%Y', [grp_1].[Date_1]) AS INTEGER),
	CAST(strftime('%m', [grp_1].[Date_1]) AS INTEGER)
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000') as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

