-- SqlServer.2019.MS SqlServer.2019

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

