BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Bit, [t].[MoneyValue] - 4.5)
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Bit, [t].[MoneyValue] - 4.5) = 0

