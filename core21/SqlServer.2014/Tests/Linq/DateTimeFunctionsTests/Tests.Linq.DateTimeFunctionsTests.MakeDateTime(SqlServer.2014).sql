BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	DateAdd(month, [p].[ID] + 1319, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, [p].[ID] + 1319, 0)) = 2010

