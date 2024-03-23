BeforeExecute
-- SqlServer.2017

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(31), [p].[MoneyValue])) > 0

