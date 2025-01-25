BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateAdd(month, 2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

