BeforeExecute
-- SqlServer.2016
DECLARE @month Int -- Int32
SET     @month = 1

SELECT
	DATETIME2FROMPARTS(2010 + [t].[ID], @month, 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]

