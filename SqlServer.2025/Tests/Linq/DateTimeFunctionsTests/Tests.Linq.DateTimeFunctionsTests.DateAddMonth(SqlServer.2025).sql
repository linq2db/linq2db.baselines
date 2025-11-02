-- SqlServer.2025 SqlServer.2022

SELECT
	CAST(DateAdd(month, 2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

