-- SqlCe

SELECT
	ROUND(CAST([t].[MoneyValue] AS Float), 0) as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND(CAST([t].[MoneyValue] AS Float), 0) <> 0

