-- SqlServer.2019.MS SqlServer.2019

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

