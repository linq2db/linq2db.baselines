BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(Max)), N',', N'.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(Max))) > 0

