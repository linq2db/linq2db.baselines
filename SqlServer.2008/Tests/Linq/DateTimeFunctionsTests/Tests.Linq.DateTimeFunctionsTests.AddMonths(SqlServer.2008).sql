-- SqlServer.2008

SELECT
	CAST(DateAdd(month, -2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

