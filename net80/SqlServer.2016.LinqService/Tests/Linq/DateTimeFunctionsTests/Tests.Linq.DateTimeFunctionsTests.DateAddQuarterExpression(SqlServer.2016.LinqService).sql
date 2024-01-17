BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	DateAdd(quarter, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

