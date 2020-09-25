BeforeExecute
-- SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 1

SELECT
	DateAdd(hour, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

