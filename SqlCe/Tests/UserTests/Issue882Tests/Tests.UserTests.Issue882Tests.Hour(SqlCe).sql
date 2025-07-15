BeforeExecute
-- SqlCe

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

