-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateAdd(year, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

