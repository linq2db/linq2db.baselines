BeforeExecute
-- SqlServer.2014

SELECT
	DATETIME2FROMPARTS(DatePart(year, [p].[DateTimeValue]), 10, 1, 20, 35, 44, 0, 3)
FROM
	[LinqDataTypes] [p]

