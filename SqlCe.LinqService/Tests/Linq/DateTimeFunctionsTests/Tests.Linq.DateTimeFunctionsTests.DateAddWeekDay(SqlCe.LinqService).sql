BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(weekday, 1, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

