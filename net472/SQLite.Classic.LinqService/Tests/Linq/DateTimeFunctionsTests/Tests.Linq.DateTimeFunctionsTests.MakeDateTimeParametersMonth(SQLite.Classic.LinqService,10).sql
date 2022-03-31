BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date(Cast((2010 + [t].[ID]) as NVarChar(4000)) || '-10-01')
FROM
	[LinqDataTypes] [t]

