BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '-3 Month'))
FROM
	[LinqDataTypes] [t]

