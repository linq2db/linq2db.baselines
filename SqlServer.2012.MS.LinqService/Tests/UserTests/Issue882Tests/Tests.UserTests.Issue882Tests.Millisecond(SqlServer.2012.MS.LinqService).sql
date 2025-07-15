BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

