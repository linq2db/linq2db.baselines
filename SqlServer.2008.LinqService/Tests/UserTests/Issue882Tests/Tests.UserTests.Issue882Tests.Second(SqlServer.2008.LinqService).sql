BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

