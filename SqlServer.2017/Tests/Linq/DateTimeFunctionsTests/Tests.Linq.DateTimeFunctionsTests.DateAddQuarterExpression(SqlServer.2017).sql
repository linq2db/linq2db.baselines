BeforeExecute
-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CAST(DateAdd(quarter, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

