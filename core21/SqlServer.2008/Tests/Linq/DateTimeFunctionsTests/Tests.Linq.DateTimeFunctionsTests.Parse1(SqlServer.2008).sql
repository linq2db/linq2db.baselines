BeforeExecute
-- SqlServer.2008

SELECT
	[d].[DateTimeValue]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

