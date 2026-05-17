-- SqlServer.2022

SELECT
	DATETIME2FROMPARTS(2010, [t].[ID], 1, 20, 35, 44, 0, 3)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIME2FROMPARTS(2010, [t].[ID], 1, 20, 35, 44, 0, 3)) = 2010

