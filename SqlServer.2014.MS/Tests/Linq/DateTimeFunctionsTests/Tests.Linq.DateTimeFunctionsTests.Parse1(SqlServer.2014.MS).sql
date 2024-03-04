BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, [d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

