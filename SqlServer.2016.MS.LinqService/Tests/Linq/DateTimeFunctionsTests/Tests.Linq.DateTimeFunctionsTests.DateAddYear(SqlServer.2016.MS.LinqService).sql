BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateAdd(year, 11, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

