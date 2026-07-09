-- SqlCe
SELECT
	CAST(CONVERT(NVarChar(10), [d].[DateTimeValue], 101) AS DateTime)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

