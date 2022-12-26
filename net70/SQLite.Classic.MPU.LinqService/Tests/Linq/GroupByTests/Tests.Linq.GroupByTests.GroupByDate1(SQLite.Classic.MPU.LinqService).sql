BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Sum([t1].[MoneyValue]),
	[t1].[Key_2],
	[t1].[Key_1]
FROM
	(
		SELECT
			Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [Key_1],
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [Key_2],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2]

