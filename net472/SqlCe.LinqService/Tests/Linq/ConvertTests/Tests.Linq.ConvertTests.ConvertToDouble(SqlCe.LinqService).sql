BeforeExecute
-- SqlCe

SELECT
	Convert(Float, [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Float, [t].[MoneyValue]) > 0

