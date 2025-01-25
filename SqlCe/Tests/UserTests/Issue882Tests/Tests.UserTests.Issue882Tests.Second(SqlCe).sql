BeforeExecute
-- SqlCe

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

