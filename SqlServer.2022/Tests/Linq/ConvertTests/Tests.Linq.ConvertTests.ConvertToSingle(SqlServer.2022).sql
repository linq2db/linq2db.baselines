BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Real, [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Real, [t].[MoneyValue]) > 0

