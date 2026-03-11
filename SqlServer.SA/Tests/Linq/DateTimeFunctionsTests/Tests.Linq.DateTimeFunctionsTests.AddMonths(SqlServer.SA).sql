-- SqlServer.SA SqlServer.2019

SELECT
	CAST(DateAdd(month, -2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

