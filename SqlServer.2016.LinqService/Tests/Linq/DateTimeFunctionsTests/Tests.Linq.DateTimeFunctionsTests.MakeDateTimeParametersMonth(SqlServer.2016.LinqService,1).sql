BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @month Int -- Int32
SET     @month = 1

SELECT
	DATETIMEFROMPARTS(2010 + [t].[ID], @month, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

