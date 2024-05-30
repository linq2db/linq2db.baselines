BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

