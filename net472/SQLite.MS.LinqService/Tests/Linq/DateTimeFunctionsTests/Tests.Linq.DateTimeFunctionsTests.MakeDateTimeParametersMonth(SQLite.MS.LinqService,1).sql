BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date(Cast((2010 + [t].[ID]) as NVarChar(11)) || '-01-01')
FROM
	[LinqDataTypes] [t]

