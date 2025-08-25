BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

