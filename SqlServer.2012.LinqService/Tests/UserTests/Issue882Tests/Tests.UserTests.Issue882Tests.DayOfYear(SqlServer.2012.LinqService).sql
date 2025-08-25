BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

