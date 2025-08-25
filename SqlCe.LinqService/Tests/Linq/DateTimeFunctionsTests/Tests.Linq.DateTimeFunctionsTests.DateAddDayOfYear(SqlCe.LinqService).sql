BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(dayofyear, 3, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

