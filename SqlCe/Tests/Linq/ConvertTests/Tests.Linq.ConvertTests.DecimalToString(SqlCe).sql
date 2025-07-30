BeforeExecute
-- SqlCe

SELECT
	Replace(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.') as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST([p].[MoneyValue] AS NVarChar(31)) + '.') > 1

