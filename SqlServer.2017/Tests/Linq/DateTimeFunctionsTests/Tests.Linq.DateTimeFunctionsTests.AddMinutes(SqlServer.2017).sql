-- SqlServer.2017

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

