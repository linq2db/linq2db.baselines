BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

