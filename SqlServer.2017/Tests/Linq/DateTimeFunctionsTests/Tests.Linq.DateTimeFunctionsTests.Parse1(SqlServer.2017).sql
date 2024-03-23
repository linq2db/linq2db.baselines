BeforeExecute
-- SqlServer.2017

SELECT
	Convert(Date, [d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

