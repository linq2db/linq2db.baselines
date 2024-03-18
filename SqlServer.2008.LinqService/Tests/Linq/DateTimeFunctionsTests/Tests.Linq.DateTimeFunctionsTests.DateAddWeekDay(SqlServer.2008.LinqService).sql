BeforeExecute
-- SqlServer.2008

SELECT
	Convert(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

