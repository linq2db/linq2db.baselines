BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	DateAdd(dayofyear, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

