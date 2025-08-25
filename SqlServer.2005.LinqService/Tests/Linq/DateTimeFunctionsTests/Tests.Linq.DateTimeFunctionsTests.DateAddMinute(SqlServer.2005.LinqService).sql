BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

