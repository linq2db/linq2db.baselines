BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

