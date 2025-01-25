BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '1 Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

