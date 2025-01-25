BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST([p].[MoneyValue] AS NVarChar(31))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

