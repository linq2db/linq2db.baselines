BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '-35 Second')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

