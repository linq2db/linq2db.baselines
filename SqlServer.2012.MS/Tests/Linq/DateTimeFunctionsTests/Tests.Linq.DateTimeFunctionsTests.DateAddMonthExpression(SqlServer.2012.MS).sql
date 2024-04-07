BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	CAST(DateAdd(month, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

