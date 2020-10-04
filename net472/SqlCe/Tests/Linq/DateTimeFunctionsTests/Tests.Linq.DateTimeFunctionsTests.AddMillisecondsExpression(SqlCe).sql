BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 226

SELECT
	DateAdd(millisecond, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

