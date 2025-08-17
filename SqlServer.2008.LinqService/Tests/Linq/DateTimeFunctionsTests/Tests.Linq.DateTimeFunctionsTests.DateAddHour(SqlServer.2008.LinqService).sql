BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

