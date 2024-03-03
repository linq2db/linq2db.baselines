BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Convert(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

