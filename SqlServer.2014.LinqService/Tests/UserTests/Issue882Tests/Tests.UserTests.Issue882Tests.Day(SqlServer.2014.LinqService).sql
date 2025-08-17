BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

