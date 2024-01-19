BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

