BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	RTRIM(REPLACE(CAST([p].[MoneyValue] AS NVarChar(Max)), N',', N'.'), N'0.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(Max))) > 0

