BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	CAST(DateAdd(month, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

