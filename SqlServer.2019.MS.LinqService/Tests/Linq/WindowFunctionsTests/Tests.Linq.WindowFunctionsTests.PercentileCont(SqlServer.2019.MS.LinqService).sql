BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @argument Float -- Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(@argument) WITHIN GROUP (ORDER BY [t1].[DecimalValue]) OVER ()
FROM
	[WindowFunctionTestEntity] [t1]

