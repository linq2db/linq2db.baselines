BeforeExecute
-- SqlServer.2017

SELECT
	Convert(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

