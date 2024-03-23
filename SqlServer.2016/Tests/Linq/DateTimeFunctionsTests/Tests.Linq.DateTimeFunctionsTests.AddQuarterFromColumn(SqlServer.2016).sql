BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

