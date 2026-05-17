-- SqlServer.2008

SELECT
	CAST(DateAdd(quarter, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

