BeforeExecute
-- SqlCe
DECLARE @p_1 Float -- Double
SET     @p_1 = 226

SELECT
	DateAdd(millisecond, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

