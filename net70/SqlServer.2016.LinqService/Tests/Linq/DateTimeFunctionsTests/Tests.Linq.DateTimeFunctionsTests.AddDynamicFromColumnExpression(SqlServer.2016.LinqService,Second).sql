BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(second, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

