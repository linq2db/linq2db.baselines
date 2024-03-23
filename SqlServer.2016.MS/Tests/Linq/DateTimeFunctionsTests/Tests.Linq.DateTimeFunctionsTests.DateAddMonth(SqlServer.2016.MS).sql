BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Convert(Date, DateAdd(month, 2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

