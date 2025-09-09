BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

