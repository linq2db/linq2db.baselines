-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

