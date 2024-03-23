BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

