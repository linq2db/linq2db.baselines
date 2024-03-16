BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	Cast(Floor(Cast(DateAdd(dayofyear, @p, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

