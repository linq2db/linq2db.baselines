BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [p].[ID]))) > 0

