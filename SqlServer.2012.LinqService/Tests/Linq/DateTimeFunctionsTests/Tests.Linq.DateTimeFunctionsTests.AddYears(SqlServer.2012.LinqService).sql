BeforeExecute
-- SqlServer.2012

SELECT
	CAST(DateAdd(year, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

