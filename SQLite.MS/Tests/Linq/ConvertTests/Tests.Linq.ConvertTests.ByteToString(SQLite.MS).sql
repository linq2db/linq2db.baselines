BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST([p].[ID] AS TinyInt)
FROM
	[LinqDataTypes] [p]
WHERE
	Length(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

