-- SqlCe

SELECT
	Floor(Sqrt(CAST([t].[MoneyValue] AS Float) / 15) * 15) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(Sqrt(CAST([t].[MoneyValue] AS Float) / 15) * 15) <> 0.10000000000000001

