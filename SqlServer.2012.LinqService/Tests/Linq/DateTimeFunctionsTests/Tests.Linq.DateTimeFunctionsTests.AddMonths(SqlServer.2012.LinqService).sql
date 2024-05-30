BeforeExecute
-- SqlServer.2012

SELECT
	CAST(DateAdd(month, -2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

