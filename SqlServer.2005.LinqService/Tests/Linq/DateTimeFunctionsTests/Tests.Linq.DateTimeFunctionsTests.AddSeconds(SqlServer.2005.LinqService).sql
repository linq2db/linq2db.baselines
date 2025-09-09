BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

