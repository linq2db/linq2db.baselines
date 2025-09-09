BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

