BeforeExecute
-- SqlCe (asynchronously)

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

