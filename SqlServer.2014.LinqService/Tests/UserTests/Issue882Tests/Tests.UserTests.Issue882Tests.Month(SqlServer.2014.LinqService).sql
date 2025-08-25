BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

