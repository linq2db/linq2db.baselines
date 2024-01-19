BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Length(Cast(Cast([p].[ID] as TinyInt) as NVarChar(255))) > 0

