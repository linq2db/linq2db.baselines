-- SqlCe

SELECT
	Round([t].[MoneyValue], 0, 1) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Round([t].[MoneyValue], 0, 1) <> 0.1

