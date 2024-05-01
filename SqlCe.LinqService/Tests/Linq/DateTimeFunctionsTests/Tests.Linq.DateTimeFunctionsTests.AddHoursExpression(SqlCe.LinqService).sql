BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 22

SELECT
	DatePart(hour, DateAdd(hour, @p, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

