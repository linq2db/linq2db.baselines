BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(day, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

