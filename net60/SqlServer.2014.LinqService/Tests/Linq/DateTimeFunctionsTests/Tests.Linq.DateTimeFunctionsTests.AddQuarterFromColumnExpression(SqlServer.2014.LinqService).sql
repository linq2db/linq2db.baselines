BeforeExecute
-- SqlServer.2014

SELECT
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

