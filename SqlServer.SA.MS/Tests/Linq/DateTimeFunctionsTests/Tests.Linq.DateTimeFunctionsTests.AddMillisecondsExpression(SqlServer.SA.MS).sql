-- SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

