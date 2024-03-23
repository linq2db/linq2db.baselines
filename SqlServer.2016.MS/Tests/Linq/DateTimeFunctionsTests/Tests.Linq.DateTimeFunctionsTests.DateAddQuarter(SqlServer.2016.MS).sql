BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Convert(Date, DateAdd(quarter, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

