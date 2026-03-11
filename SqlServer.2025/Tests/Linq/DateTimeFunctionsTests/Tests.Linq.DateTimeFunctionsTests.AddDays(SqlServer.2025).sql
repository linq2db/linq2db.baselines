-- SqlServer.2025

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

