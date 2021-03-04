BeforeExecute
-- SqlCe
DECLARE @p_1 Float -- Double
SET     @p_1 = 1

SELECT
	DateAdd(year, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

