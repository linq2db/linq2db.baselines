BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Convert(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

