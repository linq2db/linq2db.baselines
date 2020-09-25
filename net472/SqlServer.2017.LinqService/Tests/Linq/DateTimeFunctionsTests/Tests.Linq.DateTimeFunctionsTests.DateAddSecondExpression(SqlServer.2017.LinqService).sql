BeforeExecute
-- SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 41

SELECT
	DateAdd(second, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

