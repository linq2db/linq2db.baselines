-- SqlCe

SELECT
	Sign([t].[MoneyValue]) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	Sign([t].[MoneyValue]) <> 0

