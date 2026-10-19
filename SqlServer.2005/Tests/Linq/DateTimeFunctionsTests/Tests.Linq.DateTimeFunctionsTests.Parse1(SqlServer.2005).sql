-- SqlServer.2005
SELECT
	DateAdd(dd, DateDiff(dd, 0, CAST(CAST([d].[DateTimeValue] AS NVarChar(23)) AS DateTime)), 0)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, CAST(CAST([d].[DateTimeValue] AS NVarChar(23)) AS DateTime)) > 0

