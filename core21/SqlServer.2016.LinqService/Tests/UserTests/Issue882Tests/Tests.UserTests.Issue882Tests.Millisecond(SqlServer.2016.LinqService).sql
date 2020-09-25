BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

