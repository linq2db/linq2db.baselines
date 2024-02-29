BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	DateAdd(month, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

