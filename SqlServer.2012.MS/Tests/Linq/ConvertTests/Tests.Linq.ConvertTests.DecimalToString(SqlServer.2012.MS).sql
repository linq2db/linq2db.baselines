BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Convert(NVarChar(31), [p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(31), [p].[MoneyValue])) > 0

