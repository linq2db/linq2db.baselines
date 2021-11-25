BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1319

SELECT
	DateAdd(month, [p].[ID] + @ID, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, DateAdd(month, [p].[ID] + @ID, 0)) = 2010

