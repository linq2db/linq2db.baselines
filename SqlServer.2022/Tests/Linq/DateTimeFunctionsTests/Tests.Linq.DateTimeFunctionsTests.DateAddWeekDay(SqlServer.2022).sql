BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

