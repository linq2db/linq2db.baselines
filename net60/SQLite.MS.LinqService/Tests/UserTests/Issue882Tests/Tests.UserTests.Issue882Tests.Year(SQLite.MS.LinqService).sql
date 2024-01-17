BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

