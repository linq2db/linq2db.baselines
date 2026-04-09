-- SqlCe

SELECT
	Round(CAST(-[t].[MoneyValue] AS Float), 0, 1) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Round(CAST(-[t].[MoneyValue] AS Float), 0, 1) <> 0.10000000000000001

