BeforeExecute
-- SqlServer.2005
DECLARE @p_1 Float -- Double
SET     @p_1 = -8

SELECT
	DateAdd(minute, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

