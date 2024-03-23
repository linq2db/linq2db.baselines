BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Convert(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

