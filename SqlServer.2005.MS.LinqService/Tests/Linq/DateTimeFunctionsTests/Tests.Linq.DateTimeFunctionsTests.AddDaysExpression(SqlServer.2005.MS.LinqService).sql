BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(day, @p, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

