BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

