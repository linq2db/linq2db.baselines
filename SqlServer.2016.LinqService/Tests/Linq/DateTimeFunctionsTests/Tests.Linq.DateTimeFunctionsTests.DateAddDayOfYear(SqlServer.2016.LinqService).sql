BeforeExecute
-- SqlServer.2016

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

