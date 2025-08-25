BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Minute')) - julianday([t].[DateTimeValue])) * 1440)
FROM
	[LinqDataTypes] [t]

