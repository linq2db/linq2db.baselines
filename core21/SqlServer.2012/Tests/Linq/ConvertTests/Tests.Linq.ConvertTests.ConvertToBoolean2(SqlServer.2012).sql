BeforeExecute
-- SqlServer.2012

SELECT
	Convert(Bit, [t].[MoneyValue] - 4.5)
FROM
	[LinqDataTypes] [t]
WHERE
	(Convert(Bit, [t].[MoneyValue] - 4.5) = 0 OR Convert(Bit, [t].[MoneyValue] - 4.5) IS NULL)

