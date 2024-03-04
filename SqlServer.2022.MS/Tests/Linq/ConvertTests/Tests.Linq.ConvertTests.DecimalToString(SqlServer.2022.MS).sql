BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	RTRIM(Replace(Convert(NVarChar(31), [p].[MoneyValue]), N',', N'.'), N'0.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(31), [p].[MoneyValue])) > 0

