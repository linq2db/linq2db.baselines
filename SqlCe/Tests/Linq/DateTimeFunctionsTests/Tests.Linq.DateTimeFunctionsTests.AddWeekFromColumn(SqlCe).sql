-- SqlCe

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

