BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Convert(NVarChar(31), [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(31), [t].[MoneyValue])) > 0

