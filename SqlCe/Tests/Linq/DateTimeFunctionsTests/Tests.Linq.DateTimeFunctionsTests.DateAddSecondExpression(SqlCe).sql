BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 41

SELECT
	DateAdd(second, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

