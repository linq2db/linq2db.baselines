BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

