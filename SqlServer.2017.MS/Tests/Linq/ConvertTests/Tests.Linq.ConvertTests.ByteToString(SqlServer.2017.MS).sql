-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) + N'.') > 1

