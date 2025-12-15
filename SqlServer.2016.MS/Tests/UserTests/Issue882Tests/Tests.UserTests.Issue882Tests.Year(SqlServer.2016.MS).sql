-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

