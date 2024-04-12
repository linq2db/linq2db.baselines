BeforeExecute
-- SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CAST(DateAdd(week, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

