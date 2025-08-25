BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

