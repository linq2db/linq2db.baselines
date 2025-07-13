BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateAdd(year, 11, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

