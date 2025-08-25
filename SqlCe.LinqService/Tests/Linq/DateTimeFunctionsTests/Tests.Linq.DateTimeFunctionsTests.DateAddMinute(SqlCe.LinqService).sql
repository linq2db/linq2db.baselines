BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue])) as [Minute_1]
FROM
	[LinqDataTypes] [t]

