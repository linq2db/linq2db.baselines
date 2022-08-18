BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

