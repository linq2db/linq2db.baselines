-- SqlCe

SELECT
	Floor(-([t].[MoneyValue] + 1)) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(-([t].[MoneyValue] + 1)) <> 0

