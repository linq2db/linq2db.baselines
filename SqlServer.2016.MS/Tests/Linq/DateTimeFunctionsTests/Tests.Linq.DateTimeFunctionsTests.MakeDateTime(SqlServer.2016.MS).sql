BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DateAdd(month, (1320 + [t].[ID]) - 1, 0)) = 2010

