BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	Cast(Floor(Cast(DateAdd(week, @p, [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

