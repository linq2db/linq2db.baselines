BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

