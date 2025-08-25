BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(weekday, [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

