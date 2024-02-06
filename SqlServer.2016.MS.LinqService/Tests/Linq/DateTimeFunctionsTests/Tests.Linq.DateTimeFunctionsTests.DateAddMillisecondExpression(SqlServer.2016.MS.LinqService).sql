BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(hour, @p / 3600000, DateAdd(millisecond, @p % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

