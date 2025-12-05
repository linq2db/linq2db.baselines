-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(weekday, [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

