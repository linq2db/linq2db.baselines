-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

