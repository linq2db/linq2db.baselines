BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST([p].[MoneyValue] AS NVarChar(31))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

