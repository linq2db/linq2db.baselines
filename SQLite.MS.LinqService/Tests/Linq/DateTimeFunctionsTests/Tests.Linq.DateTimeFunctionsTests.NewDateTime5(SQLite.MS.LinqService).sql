BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) + 1
FROM
	[LinqDataTypes] [t]

