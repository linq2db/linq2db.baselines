BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5

SELECT
	DateAdd(day, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

