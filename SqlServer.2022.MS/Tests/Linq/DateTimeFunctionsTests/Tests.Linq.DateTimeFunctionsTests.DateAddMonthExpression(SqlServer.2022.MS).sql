BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	CAST(DateAdd(month, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

