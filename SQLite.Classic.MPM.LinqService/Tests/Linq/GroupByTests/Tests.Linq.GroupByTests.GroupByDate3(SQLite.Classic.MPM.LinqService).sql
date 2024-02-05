BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Sum([t1].[MoneyValue]),
	Cast(StrFTime('%Y', [t1].[Key_1]) as int),
	Cast(StrFTime('%m', [t1].[Key_1]) as int)
FROM
	(
		SELECT
			Date(printf('%04d', Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)) || '-' || printf('%02d', Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) || '-01') as [Key_1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

