BeforeExecute
-- SqlServer.2005
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	DateAdd(year, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

