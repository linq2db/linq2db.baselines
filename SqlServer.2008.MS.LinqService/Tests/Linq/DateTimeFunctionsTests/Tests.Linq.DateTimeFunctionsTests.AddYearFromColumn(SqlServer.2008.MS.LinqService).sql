BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Convert(Date, DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

