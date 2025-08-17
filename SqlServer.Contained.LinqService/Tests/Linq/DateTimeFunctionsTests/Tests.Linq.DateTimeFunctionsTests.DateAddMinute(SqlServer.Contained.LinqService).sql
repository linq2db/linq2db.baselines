BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

