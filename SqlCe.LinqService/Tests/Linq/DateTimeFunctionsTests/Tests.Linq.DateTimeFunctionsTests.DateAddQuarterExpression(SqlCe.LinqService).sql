BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(quarter, @p, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

