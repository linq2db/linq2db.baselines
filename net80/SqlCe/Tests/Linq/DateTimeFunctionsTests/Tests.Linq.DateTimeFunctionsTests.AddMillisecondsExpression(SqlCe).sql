BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

