-- SqlCe

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + '-01-01' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [t]

