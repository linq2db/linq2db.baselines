BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) + N'.') > 1

