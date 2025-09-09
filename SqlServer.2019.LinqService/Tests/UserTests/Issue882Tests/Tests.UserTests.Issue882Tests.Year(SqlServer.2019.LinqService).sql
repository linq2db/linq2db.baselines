BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

