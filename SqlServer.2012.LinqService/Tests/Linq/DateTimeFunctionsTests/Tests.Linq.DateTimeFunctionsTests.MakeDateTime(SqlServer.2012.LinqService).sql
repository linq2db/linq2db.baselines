BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DATETIME2FROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIME2FROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0, 3)) = 2010

