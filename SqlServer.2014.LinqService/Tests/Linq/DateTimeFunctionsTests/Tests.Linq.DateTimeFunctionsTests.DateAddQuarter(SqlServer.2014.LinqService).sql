BeforeExecute
-- SqlServer.2014

SELECT
	Convert(Date, DateAdd(quarter, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

