BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

