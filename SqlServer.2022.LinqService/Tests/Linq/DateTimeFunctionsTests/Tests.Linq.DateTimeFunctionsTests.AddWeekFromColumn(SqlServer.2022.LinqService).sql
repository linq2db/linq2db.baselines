BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

