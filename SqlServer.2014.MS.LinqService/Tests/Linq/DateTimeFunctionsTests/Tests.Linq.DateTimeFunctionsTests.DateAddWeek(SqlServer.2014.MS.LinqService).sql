BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

