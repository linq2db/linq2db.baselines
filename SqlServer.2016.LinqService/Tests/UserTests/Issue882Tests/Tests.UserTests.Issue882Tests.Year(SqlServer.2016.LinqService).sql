BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

