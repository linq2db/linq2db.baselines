BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

