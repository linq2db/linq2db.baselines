BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

