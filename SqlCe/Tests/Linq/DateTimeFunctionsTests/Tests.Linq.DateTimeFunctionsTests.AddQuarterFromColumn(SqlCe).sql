-- SqlCe

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

