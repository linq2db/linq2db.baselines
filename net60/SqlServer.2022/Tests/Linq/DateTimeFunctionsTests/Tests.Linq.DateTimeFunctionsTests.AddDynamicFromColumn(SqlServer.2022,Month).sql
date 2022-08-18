BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(month, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

