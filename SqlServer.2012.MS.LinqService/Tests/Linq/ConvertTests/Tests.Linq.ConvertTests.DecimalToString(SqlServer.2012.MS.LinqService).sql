BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST([p].[MoneyValue] AS NVarChar(31))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

