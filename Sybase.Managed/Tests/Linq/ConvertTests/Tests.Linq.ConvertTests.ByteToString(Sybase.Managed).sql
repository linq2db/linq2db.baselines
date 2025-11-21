-- Sybase.Managed Sybase

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))
FROM
	[LinqDataTypes] [p]
WHERE
	CHAR_LENGTH(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

