BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

