BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

