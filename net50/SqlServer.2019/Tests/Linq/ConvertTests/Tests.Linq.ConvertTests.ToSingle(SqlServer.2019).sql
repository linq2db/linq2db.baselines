BeforeExecute
-- SqlServer.2019

SELECT
	Convert(Real, [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Real, [t].[MoneyValue]) > 0

