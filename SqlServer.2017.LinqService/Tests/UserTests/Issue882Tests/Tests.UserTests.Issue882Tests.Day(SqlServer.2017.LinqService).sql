BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

