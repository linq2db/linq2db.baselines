BeforeExecute
-- SqlServer.2014
DECLARE @argument Float -- Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(@argument) WITHIN GROUP (ORDER BY [t1].[DecimalValue]) OVER ()
FROM
	[WindowFunctionTestEntity] [t1]

