BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	(Cast(strFTime('%m', [t].[DateTimeValue]) as int) - 1) / 3 + 1
FROM
	[LinqDataTypes] [t]

