BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CAST(DateAdd(week, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

