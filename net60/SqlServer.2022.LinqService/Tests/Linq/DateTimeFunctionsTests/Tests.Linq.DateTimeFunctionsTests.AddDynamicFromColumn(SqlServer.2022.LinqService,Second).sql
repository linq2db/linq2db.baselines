BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(second, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

