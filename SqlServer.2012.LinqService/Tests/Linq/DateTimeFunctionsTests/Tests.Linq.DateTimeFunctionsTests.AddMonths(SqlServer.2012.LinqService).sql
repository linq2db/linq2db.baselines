BeforeExecute
-- SqlServer.2012

SELECT
	Convert(Date, DateAdd(month, -2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

