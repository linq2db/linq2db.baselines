-- SqlCe

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(year, 11, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

