BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

