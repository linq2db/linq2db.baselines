BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date(printf('%04d', (2010 + [t].[ID])) || '-01-01')
FROM
	[LinqDataTypes] [t]

