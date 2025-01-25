BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST([p].[MoneyValue] AS NVarChar(31))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

