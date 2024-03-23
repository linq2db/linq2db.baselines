BeforeExecute
-- SqlServer.2012

SELECT
	Convert(Date, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

