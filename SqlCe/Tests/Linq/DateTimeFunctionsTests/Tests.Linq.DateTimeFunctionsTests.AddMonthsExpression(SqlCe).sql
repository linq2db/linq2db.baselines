BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -2

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(month, @p, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

