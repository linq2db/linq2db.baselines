-- SqlCe

SELECT
	Floor(Log(CAST([t].[MoneyValue] AS Float)) / 0.69314718055994529) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(Log(CAST([t].[MoneyValue] AS Float)) / 0.69314718055994529) <> 0.10000000000000001

