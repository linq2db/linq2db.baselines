-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

