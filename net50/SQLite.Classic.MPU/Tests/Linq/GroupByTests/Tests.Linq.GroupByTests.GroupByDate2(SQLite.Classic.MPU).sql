BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Sum([selectParam].[MoneyValue]),
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int),
	Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)

