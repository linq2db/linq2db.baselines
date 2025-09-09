BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	DATETIMEFROMPARTS(2010, [t].[ID], 1, 20, 35, 44, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIMEFROMPARTS(2010, [t].[ID], 1, 20, 35, 44, 0)) = 2010

