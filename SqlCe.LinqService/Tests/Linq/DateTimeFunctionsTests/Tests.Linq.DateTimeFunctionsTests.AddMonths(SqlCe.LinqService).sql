BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(month, -2, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

