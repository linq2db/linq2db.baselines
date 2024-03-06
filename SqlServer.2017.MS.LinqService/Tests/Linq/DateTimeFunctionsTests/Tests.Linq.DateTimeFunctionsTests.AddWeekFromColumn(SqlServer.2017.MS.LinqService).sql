BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Convert(Date, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

