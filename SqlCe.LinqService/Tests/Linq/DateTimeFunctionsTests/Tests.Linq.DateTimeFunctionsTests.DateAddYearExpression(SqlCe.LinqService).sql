BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 11

SELECT
	Cast(Floor(Cast(DateAdd(year, @p, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

