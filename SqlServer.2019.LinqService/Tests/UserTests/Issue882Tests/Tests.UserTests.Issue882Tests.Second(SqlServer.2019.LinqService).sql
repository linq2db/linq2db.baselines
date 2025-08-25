BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

