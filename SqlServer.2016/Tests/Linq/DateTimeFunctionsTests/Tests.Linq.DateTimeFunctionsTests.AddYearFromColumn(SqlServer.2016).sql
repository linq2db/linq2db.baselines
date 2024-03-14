BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Date, DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

