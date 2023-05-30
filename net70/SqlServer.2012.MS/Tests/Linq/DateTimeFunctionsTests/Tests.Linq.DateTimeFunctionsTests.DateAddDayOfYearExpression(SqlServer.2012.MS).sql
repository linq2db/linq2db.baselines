BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	DateAdd(dayofyear, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

