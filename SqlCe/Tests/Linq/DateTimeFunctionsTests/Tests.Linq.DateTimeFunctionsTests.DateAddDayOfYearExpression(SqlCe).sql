BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(dayofyear, @p, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

