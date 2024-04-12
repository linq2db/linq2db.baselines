BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateAdd(weekday, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

