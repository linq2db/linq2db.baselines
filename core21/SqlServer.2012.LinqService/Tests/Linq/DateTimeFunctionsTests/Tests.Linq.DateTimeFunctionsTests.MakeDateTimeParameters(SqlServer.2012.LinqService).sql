BeforeExecute
-- SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 1320

SELECT
	DateAdd(month, (@p1 + [p].[ID]) - 1, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, (@p1 + [p].[ID]) - 1, 0)) = 2010

