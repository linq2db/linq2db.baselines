BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

