BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

