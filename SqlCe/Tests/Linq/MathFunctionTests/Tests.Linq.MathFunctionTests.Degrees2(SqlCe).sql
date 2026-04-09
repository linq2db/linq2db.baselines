-- SqlCe

SELECT
	Floor(Degrees(CAST([t].[MoneyValue] AS Float))) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Degrees(CAST([t].[MoneyValue] AS Float)) <> 0.10000000000000001

