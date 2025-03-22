BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	CHAR_LENGTH(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0 AND
	'' <> CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))

