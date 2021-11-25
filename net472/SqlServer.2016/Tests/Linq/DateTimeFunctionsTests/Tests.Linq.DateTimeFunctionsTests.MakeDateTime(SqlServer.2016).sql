BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(month, [p].[ID] + 1319, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, [p].[ID] + 1319, 0)) = 2010

