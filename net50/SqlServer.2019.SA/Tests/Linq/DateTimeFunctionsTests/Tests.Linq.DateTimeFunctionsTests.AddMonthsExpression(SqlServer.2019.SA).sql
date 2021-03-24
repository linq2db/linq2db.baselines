BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @p_1 Float -- Double
SET     @p_1 = -2

SELECT
	DateAdd(month, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

