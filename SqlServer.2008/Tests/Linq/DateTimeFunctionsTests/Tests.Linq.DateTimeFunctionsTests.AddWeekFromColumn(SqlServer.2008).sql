BeforeExecute
-- SqlServer.2008

SELECT
	Convert(Date, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

