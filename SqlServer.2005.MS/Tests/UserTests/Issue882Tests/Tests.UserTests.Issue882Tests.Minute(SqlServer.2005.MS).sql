-- SqlServer.2005.MS SqlServer.2005

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

