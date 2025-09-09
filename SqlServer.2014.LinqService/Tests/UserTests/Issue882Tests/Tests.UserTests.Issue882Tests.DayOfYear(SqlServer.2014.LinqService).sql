BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

