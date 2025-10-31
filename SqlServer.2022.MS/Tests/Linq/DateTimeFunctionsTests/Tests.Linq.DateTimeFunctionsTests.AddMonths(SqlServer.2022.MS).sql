-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateAdd(month, -2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

