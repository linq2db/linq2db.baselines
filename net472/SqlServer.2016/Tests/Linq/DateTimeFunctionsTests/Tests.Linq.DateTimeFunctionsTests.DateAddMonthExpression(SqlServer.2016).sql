BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	DateAdd(month, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

