-- SqlCe
SELECT
	Replace(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.')
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST([p].[MoneyValue] AS NVarChar(31)) + '.') > 1

