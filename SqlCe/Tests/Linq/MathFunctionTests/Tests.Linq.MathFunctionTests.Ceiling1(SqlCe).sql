-- SqlCe

SELECT
	Ceiling(-([t].[MoneyValue] + 1)) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Ceiling(-([t].[MoneyValue] + 1)) <> 0

