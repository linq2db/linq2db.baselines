BeforeExecute
-- SqlCe (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue]) as [c1]
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

