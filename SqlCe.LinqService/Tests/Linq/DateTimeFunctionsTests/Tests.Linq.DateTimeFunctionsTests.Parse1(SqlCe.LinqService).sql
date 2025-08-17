BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CAST(CONVERT(NVarChar(10), [d].[DateTimeValue], 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

