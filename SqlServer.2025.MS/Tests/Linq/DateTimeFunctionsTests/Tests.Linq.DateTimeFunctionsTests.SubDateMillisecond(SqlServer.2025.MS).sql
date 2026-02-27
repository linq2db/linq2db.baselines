-- SqlServer.2025.MS SqlServer.2025

SELECT
	CAST(DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

