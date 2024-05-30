BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DatePart(minute, DateAdd(minute, @p, [t].[DateTimeValue])) as [Minute_1]
FROM
	[LinqDataTypes] [t]

