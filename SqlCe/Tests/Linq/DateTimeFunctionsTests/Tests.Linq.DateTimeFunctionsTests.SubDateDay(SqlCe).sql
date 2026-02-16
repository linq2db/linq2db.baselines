-- SqlCe

SELECT
	CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Float) as [c1]
FROM
	[LinqDataTypes] [t]

