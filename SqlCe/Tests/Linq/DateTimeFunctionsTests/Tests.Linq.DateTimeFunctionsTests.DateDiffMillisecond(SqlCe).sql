-- SqlCe

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

