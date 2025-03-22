BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	LENGTH(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

