BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DatePart(weekday, [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

