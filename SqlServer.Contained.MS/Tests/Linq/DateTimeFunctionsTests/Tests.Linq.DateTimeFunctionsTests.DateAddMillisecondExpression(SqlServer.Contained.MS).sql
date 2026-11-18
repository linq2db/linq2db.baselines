-- SqlServer.Contained.MS SqlServer.2025
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

