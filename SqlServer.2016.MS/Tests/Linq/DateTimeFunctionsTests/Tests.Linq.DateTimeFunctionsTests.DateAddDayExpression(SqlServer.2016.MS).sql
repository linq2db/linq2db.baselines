BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	CAST(DateAdd(day, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

