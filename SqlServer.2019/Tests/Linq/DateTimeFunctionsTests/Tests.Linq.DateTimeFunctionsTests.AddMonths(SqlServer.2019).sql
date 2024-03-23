BeforeExecute
-- SqlServer.2019

SELECT
	Convert(Date, DateAdd(month, -2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

