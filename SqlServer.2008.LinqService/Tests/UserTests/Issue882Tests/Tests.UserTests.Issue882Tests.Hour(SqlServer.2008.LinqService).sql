BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

