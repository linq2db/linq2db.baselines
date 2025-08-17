BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

