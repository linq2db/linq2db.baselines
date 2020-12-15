BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p_1 Int -- Int32
SET     @p_1 = 41

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

