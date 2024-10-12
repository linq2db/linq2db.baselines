BeforeExecute
-- SQLite.Classic SQLite

SELECT
	SUM([t1].[MoneyValue]),
	CAST(strftime('%Y', [t1].[Value_1]) AS INTEGER),
	CAST(strftime('%m', [t1].[Value_1]) AS INTEGER)
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000') as [Value_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Value_1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	SUM([t1].[MoneyValue]),
	CAST(strftime('%Y', [t1].[Value_1]) AS INTEGER),
	CAST(strftime('%m', [t1].[Value_1]) AS INTEGER)
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [grp].[DateTimeValue]) AS INTEGER)) || '-' || printf('%02d', CAST(strftime('%m', [grp].[DateTimeValue]) AS INTEGER)) || '-01 00:00:00.000') as [Value_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Value_1]

