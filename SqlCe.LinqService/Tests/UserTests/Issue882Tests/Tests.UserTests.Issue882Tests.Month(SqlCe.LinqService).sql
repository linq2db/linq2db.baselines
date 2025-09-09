BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

