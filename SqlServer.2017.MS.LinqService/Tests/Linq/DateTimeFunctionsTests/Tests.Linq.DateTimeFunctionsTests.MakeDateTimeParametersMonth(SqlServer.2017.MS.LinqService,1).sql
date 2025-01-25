BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @month Int -- Int32
SET     @month = 1

SELECT
	DATETIMEFROMPARTS(2010 + [t].[ID], @month, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

