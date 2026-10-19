-- SqlCe
SELECT
	CAST(CONVERT(NVarChar(10), CAST(CAST([d].[DateTimeValue] AS NVarChar(27)) AS DateTime), 101) AS DateTime)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, CAST(CAST([d].[DateTimeValue] AS NVarChar(27)) AS DateTime)) > 0

