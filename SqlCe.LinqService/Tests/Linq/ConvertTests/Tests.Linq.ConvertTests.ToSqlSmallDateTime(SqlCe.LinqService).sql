BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + '-01-01 00:20:00' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [t]

