BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

