BeforeExecute
-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	DateAdd(week, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

