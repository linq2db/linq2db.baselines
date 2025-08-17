BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue])) as [Second_1]
FROM
	[LinqDataTypes] [t]

