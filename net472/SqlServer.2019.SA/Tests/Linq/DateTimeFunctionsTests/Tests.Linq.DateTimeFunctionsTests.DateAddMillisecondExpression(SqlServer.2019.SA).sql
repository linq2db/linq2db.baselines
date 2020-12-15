BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 226

SELECT
	DateAdd(millisecond, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

