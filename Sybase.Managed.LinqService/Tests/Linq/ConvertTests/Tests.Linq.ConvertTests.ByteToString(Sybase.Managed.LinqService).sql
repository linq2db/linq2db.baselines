BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	CHAR_LENGTH(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

