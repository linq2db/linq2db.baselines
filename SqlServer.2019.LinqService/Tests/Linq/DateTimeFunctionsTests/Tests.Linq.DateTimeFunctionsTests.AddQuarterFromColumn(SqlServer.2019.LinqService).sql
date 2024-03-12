BeforeExecute
-- SqlServer.2019

SELECT
	Convert(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

