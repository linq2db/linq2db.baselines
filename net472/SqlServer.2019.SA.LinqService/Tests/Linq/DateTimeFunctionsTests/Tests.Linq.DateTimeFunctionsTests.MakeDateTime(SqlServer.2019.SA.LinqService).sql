BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DateAdd(month, [p].[ID] + 1319, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, [p].[ID] + 1319, 0)) = 2010

