BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 41

SELECT
	DateAdd(second, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

