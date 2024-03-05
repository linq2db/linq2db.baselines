BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Convert(Date, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

