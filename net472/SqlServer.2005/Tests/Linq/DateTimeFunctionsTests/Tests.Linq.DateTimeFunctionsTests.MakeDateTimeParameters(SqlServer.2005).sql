BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1320

SELECT
	DateAdd(month, (@ID + [p].[ID]) - 1, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, (@ID + [p].[ID]) - 1, 0)) = 2010

