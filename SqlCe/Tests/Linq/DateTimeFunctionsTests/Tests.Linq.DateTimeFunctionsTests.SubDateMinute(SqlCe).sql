-- SqlCe

SELECT
	CAST(DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Float) as [c1]
FROM
	[LinqDataTypes] [t]

