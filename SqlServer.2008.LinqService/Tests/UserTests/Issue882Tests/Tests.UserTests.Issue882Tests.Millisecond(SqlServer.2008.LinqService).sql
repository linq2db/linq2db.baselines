BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

