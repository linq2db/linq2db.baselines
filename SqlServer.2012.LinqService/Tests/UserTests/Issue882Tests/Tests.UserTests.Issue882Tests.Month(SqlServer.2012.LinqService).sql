BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

