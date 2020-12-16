BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5

SELECT
	DateAdd(minute, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

