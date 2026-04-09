-- SqlCe

SELECT
	Floor(Exp(CAST([t].[MoneyValue] AS Float))) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(Exp(CAST([t].[MoneyValue] AS Float))) <> 0.10000000000000001

