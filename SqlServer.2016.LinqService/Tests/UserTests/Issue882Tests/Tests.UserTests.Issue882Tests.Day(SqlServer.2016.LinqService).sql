BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

