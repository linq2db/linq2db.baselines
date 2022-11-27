BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	DateAdd(dayofyear, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

