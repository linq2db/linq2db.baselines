BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -35

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue])) as [Second_1]
FROM
	[LinqDataTypes] [t]

