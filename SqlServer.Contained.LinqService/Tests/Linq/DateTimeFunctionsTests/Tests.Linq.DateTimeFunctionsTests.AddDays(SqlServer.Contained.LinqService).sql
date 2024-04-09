BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

