-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateAdd(quarter, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

