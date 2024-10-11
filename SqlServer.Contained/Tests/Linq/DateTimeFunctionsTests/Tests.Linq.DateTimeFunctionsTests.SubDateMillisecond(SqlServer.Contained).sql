BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

