-- SqlCe

SELECT
	CAST(DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Float) as [c1]
FROM
	[LinqDataTypes] [t]

