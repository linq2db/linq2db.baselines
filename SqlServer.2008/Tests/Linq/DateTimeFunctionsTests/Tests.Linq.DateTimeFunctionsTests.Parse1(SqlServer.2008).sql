BeforeExecute
-- SqlServer.2008

SELECT
	CAST([d].[DateTimeValue] AS Date)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

