BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue])) as [Minute_1]
FROM
	[LinqDataTypes] [t]

