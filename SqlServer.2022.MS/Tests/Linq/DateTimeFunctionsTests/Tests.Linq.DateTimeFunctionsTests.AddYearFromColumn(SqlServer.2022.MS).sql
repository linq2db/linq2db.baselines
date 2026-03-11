-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

