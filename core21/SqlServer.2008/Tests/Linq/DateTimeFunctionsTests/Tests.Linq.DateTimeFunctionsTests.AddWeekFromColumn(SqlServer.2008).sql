BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

