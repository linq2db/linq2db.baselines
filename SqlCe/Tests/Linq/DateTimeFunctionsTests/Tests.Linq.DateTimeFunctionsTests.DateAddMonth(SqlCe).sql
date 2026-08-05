-- SqlCe
SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(month, 2, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

