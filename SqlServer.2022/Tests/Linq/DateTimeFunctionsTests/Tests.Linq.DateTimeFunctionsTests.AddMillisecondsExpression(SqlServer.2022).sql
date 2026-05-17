-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

-- SqlServer.2022

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

