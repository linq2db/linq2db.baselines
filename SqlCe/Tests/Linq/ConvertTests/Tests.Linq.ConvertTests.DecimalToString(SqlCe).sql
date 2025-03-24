BeforeExecute
--  SqlCe

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(31)), ',', '.') as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

