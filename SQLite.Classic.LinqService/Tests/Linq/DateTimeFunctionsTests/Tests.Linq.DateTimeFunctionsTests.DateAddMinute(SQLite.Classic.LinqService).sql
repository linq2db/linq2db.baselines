BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '5 Minute')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

