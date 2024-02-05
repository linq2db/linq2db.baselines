BeforeExecute
-- SqlServer.2019

SELECT
	DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

