BeforeExecute
-- SqlServer.2017

SELECT
	Convert(Date, DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

