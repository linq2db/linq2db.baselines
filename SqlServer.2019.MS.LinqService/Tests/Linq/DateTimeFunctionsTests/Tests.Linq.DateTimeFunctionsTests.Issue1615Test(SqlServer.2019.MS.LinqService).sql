BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Convert(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

