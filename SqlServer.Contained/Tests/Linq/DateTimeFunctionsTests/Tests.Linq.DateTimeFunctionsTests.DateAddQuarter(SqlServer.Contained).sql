BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Convert(Date, DateAdd(quarter, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

