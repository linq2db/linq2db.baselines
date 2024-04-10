BeforeExecute
-- SqlServer.2022

SELECT
	CAST([p].[MoneyValue] AS NVarChar(31))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST([p].[MoneyValue] AS NVarChar(31))) > 0

