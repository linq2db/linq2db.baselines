BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[d].[DateTimeValue]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

