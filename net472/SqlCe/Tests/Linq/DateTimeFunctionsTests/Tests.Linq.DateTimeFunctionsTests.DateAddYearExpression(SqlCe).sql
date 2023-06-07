BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 11

SELECT
	DateAdd(year, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

