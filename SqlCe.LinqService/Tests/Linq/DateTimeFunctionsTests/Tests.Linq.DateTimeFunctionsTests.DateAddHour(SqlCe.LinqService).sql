BeforeExecute
-- SqlCe

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

