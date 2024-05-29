BeforeExecute
-- SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	CAST(DateAdd(day, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

