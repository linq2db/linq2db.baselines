-- SqlCe

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

