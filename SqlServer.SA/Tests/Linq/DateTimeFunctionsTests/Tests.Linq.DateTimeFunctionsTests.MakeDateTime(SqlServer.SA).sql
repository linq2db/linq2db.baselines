BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	DATETIME2FROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIME2FROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0, 3)) = 2010

