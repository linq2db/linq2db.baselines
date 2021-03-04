BeforeExecute
-- SqlCe
DECLARE @p_1 Float -- Double
SET     @p_1 = -35

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

