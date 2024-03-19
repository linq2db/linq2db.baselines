BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [p].[ID]))) > 0

