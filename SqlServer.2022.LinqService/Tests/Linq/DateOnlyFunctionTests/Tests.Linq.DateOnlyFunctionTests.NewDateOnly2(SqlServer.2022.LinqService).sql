BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DATETIMEFROMPARTS(DatePart(year, [p].[DateTimeValue]), 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [p]

