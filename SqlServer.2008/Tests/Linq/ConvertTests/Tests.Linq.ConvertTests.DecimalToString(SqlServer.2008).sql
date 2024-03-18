BeforeExecute
-- SqlServer.2008

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(31), [p].[MoneyValue])) > 0

