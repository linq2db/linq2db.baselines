BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

