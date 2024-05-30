BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 11

SELECT
	CAST(DateAdd(year, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

