-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(weekday, [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

