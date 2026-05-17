-- SqlServer.2008

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

