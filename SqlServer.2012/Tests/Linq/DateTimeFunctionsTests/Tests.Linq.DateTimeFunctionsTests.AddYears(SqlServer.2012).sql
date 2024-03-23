BeforeExecute
-- SqlServer.2012

SELECT
	Convert(Date, DateAdd(year, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

