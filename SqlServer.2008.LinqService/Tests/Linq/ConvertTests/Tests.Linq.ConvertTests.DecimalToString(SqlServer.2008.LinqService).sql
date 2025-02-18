BeforeExecute
-- SqlServer.2008

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(Max)), N',', N'.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(Max))) > 0

