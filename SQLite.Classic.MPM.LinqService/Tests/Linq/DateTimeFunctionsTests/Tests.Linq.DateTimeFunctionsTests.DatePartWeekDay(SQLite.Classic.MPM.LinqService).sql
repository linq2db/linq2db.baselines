BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%w', [t].[DateTimeValue]) AS INTEGER) + 1
FROM
	[LinqDataTypes] [t]

