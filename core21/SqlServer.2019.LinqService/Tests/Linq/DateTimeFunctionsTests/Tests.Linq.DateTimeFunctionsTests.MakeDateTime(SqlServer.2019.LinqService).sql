BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	DateAdd(month, (1320 + [p].[ID]) - 1, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, (1320 + [p].[ID]) - 1, 0)) = 2010

