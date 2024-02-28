BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Convert(Date, DateAdd(quarter, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

