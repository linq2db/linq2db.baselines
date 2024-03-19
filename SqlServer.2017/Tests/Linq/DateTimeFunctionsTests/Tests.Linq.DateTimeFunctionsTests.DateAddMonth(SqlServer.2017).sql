BeforeExecute
-- SqlServer.2017

SELECT
	Convert(Date, DateAdd(month, 2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

