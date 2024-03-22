BeforeExecute
-- SqlServer.2017

SELECT
	Convert(Date, DateAdd(year, 11, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

