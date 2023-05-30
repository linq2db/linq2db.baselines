BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -8

SELECT
	DateAdd(minute, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

