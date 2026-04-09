-- SqlCe

SELECT
	Floor(Power(CAST([t].[MoneyValue] AS Float), 3)) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(Power(CAST([t].[MoneyValue] AS Float), 3)) <> 0

