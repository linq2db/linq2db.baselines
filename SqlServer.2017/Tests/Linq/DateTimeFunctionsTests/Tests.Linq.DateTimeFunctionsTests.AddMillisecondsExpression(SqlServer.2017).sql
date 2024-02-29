BeforeExecute
-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2017

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

