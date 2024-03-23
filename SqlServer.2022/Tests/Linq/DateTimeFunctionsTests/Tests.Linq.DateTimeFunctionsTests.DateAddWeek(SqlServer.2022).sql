BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

