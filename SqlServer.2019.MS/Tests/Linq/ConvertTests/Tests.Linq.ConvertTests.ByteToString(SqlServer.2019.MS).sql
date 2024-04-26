BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

