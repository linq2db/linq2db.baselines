BeforeExecute
-- SqlCe

SELECT
	Convert(Decimal, Floor([t].[MoneyValue]))
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Decimal, Floor([t].[MoneyValue])) > 0

