-- SqlServer.SA.MS SqlServer.2019

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

