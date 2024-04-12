BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = -2

SELECT
	CAST(DateAdd(month, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

