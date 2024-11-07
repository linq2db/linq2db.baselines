BeforeExecute
-- SqlServer.2012

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(31)), N',', N'.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

