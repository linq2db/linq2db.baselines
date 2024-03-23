BeforeExecute
-- SqlServer.2012

SELECT
	Convert(Date, [d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

