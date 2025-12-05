-- SqlCe

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	Floor([p].[MoneyValue]) > 0

