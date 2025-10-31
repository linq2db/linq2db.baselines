-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

