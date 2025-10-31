-- SqlServer.2012

SELECT
	DatePart(weekday, [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

