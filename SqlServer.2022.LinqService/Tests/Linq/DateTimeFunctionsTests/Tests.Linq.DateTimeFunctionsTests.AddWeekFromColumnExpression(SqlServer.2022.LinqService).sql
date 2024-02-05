BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

