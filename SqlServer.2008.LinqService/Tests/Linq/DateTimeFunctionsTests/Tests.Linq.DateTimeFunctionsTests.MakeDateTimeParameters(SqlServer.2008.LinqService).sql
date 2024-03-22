BeforeExecute
-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 1320

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DateAdd(month, (@p + [t].[ID]) - 1, 0)) = 2010

