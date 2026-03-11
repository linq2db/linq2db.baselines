-- SqlCe

SELECT
	CAST(DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Float) as [c1]
FROM
	[LinqDataTypes] [t]

