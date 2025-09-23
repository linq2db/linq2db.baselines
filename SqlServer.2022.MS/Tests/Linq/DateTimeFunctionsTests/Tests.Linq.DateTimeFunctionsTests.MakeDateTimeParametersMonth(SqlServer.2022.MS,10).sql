BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	DATETIME2FROMPARTS(2010 + [t].[ID], @month, 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]

