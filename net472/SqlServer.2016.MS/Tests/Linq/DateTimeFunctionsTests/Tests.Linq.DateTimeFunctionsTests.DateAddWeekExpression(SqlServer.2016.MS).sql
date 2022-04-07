BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	DateAdd(week, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

