BeforeExecute
--  Sybase.Managed Sybase

SELECT
	Str_Replace(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

