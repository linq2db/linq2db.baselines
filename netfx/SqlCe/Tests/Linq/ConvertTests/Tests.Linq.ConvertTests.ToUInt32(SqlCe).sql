BeforeExecute
-- SqlCe

SELECT
	Convert(BigInt, [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(BigInt, [t].[MoneyValue]) > 0

