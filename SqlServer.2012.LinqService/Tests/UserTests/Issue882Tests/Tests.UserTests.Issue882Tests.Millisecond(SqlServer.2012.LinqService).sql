BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

