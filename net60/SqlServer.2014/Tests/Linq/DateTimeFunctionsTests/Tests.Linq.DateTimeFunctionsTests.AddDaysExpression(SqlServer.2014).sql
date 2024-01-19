BeforeExecute
-- SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DateAdd(day, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

