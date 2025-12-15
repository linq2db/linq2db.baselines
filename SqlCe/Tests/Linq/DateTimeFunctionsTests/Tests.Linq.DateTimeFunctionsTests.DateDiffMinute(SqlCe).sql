-- SqlCe

SELECT
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

