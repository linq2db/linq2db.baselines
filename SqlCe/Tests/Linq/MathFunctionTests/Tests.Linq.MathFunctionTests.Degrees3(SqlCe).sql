-- SqlCe

SELECT
	Degrees(CAST([t].[MoneyValue] AS Int)) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(Degrees(CAST([t].[MoneyValue] AS Int)) AS Float) <> 0.10000000000000001

