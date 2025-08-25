BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

