BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

