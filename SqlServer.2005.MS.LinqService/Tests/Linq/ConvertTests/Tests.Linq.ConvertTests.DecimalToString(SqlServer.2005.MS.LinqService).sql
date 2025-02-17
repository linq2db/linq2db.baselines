BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(Max)), N',', N'.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(Max))) > 0

