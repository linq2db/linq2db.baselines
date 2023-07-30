BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	DateAdd(month, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

