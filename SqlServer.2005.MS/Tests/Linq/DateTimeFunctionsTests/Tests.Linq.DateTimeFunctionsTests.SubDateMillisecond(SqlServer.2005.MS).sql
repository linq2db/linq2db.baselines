-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BIGINT) * 10000 AS BigInt) AS Float) / 10000
FROM
	[LinqDataTypes] [t]

