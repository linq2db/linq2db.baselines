-- SqlCe

SELECT
	Floor(Degrees([t].[MoneyValue])) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Floor(Degrees([t].[MoneyValue])) <> 0.1

