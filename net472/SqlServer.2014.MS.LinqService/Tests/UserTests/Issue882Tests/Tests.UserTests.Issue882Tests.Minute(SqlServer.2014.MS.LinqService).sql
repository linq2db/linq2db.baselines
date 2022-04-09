BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

