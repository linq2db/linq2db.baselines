BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

