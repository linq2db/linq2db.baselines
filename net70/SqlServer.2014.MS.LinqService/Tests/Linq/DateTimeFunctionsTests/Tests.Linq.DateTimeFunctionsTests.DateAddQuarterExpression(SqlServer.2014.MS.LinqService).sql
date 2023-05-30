BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	DateAdd(quarter, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

