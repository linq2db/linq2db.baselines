BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

