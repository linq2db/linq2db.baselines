BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Cast(Floor(Cast(DateAdd(month, @p, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

