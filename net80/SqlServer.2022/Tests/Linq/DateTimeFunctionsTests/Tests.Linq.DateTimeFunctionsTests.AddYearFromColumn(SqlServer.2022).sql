BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

