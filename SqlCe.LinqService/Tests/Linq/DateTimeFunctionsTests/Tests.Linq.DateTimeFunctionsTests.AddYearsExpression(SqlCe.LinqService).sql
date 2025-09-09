BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = 1

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(year, @Date, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

