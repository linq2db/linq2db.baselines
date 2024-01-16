BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	DateAdd(dayofyear, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

