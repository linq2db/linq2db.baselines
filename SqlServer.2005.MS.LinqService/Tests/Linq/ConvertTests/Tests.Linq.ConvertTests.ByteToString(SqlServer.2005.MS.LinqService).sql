BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST([p].[ID] AS TinyInt)
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

