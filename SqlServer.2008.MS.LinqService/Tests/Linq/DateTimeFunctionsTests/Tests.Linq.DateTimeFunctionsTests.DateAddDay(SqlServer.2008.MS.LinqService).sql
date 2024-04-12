BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

