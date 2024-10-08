BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CAST(round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '2023456.789 Second')) - julianday([t].[DateTimeValue])) * 86400000) AS INTEGER)
FROM
	[LinqDataTypes] [t]

