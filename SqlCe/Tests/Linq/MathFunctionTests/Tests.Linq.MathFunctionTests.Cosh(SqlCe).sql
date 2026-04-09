-- SqlCe

SELECT
	Floor(((Exp(CAST([t].[MoneyValue] AS Float) / 15) + Exp(-(CAST([t].[MoneyValue] AS Float) / 15))) / 2) * 15) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(((Exp(CAST([t].[MoneyValue] AS Float) / 15) + Exp(-(CAST([t].[MoneyValue] AS Float) / 15))) / 2) * 15) <> 0.10000000000000001

