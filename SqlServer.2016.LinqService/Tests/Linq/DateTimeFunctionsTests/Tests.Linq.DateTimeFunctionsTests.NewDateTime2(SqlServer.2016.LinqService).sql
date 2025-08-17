BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DATETIMEFROMPARTS(DatePart(year, [p].[DateTimeValue]), 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [p]

