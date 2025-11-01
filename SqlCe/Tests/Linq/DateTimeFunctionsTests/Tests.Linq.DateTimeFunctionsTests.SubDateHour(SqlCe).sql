-- SqlCe

SELECT
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

