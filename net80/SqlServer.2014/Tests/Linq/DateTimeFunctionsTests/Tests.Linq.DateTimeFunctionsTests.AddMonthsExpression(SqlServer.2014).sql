BeforeExecute
-- SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = -2

SELECT
	DateAdd(month, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

