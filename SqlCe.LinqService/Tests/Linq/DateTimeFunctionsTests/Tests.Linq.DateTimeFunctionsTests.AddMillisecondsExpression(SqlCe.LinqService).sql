BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue]) as [c1]
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe

SELECT
	DateAdd(millisecond, 226, [t].[DateTimeValue]) as [c1]
FROM
	[LinqDataTypes] [t]

