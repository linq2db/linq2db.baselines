-- SqlCe

SELECT
	Floor(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal(18, 10))) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal(18, 10))) <> 0

