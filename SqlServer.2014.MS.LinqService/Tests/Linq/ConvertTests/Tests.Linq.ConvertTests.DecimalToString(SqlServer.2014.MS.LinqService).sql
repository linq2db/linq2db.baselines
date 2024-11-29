BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(31)), N',', N'.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

