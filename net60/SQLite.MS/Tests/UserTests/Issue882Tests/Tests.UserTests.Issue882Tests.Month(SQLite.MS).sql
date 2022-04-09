BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%m', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

