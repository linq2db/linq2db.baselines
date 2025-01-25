BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	CAST(DateAdd(dayofyear, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

