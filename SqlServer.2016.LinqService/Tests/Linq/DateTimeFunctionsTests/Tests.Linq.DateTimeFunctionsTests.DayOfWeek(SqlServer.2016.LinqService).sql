BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(weekday, [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

