BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

