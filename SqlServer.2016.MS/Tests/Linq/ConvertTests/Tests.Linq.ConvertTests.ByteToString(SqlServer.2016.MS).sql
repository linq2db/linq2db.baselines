BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(Max))) > 0

