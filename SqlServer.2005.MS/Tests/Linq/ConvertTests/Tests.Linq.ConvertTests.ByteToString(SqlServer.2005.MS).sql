BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) + N'.') > 1

