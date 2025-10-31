BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) + N'.') > 1

