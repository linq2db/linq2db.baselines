BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(month, [t].[ID] + 1319, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DateAdd(month, [t].[ID] + 1319, 0)) = 2010

