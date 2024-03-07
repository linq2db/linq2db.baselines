BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Convert(Date, DateAdd(quarter, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

