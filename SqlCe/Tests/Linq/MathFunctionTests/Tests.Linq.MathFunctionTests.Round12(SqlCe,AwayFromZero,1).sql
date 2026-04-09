-- SqlCe

SELECT
	ROUND([t].[MoneyValue], 1) as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0 AND ROUND([t].[MoneyValue], 1) <> 7

