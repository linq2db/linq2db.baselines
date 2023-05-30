BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	DateAdd(weekday, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

