BeforeExecute
-- SqlServer.2014

SELECT
	Convert(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

