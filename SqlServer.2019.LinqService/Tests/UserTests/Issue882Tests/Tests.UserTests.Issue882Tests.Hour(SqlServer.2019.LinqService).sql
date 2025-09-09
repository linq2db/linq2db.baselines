BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

