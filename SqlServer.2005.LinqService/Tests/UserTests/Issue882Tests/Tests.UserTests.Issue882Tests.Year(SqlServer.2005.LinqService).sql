BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

