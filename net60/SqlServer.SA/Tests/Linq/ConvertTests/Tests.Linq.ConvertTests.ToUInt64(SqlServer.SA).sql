BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Convert(Decimal, Floor([t].[MoneyValue]))
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Decimal, Floor([t].[MoneyValue])) > 0

