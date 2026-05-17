-- SqlServer.2017

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

