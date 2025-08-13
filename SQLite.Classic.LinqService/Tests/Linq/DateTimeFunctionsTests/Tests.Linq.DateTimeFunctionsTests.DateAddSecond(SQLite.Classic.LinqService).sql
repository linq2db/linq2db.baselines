BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '41 Second')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

