-- SqlCe

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(week, -1, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

