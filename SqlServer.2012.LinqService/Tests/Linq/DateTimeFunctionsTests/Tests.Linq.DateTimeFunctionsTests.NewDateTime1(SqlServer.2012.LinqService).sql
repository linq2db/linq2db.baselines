BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DATETIME2FROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]

