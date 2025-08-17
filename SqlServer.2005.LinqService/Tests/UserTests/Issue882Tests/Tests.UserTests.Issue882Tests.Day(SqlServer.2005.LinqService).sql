BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

