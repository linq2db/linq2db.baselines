BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1319

SELECT
	DateAdd(month, [t].[ID] + @ID, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DateAdd(month, [t].[ID] + @ID, 0)) = 2010

