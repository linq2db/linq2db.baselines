BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

