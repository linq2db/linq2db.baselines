-- SqlServer.2012

SELECT
	CAST(DateAdd(weekday, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

