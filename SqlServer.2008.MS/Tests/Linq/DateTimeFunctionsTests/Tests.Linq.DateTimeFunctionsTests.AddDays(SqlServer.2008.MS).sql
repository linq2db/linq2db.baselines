BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Convert(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

