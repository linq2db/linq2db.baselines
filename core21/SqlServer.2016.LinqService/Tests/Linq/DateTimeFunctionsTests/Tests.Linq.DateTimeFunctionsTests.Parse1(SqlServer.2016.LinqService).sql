BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, [t].[DateTimeValue]) > 0

