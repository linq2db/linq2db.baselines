-- SqlServer.2005

SELECT
	DateAdd(second, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

