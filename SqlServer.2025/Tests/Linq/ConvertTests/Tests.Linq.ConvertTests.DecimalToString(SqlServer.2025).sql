BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	RTRIM(Replace(CAST([p].[MoneyValue] AS NVarChar(31)), N',', N'.'), N'0.')
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST([p].[MoneyValue] AS NVarChar(31)) + N'.') > 1

