BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	DATETIME2FROMPARTS(DatePart(year, [p].[DateTimeValue]), 10, 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [p]

