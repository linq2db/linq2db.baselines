BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DateAdd(day, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

