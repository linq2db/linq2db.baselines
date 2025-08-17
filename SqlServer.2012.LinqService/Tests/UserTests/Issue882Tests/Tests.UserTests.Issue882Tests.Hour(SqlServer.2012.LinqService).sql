BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

