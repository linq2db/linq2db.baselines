BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	Cast(Floor(Cast(DateAdd(day, @p, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

