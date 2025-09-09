BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

