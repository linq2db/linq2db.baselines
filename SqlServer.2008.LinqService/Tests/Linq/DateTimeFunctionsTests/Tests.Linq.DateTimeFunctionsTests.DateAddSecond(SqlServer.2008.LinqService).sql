BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, 41, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

