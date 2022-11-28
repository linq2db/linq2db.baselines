BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

