BeforeExecute
-- SqlServer.2019

SELECT
	Convert(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

