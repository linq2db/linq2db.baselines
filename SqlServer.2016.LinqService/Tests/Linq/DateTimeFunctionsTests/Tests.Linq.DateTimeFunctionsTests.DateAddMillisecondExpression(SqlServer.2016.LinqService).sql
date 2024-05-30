BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2016

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

