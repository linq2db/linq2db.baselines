BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(Cast(strFTime('%w', [t].[DateTimeValue]) as int) + 1) - 1
FROM
	[LinqDataTypes] [t]

