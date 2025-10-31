-- SqlServer.2017

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

