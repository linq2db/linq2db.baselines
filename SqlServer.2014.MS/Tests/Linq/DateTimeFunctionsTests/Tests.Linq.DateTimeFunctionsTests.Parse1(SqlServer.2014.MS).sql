-- SqlServer.2014.MS SqlServer.2014
SELECT
	CAST(CAST(CAST([d].[DateTimeValue] AS NVarChar(27)) AS DateTime2) AS Date)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, CAST(CAST([d].[DateTimeValue] AS NVarChar(27)) AS DateTime2)) > 0

