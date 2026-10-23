-- SqlCe
SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(year, 1, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

