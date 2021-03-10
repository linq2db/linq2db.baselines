BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)

