-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST([d].[DateTimeValue] AS Date)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

