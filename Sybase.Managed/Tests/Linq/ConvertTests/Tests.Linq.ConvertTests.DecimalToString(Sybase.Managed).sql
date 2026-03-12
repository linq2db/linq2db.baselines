-- Sybase.Managed Sybase

SELECT
	Str_Replace(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.')
FROM
	[LinqDataTypes] [p]
WHERE
	CHAR_LENGTH(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

