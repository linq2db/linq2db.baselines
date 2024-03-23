BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

