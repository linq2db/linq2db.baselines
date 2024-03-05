BeforeExecute
-- SqlServer.2017

SELECT
	Convert(NVarChar(31), [p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(31), [p].[MoneyValue])) > 0

