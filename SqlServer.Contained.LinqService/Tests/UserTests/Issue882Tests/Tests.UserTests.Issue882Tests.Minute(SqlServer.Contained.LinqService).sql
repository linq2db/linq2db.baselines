BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

