BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	DATETIME2FROMPARTS(@year, [t].[ID], 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIME2FROMPARTS(@year, [t].[ID], 1, 0, 0, 0, 0, 3)) = 2010

