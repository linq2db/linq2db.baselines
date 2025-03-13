BeforeExecute
-- SqlServer.2019
DECLARE @argument Float -- Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(@argument) WITHIN GROUP (ORDER BY [t1].[DecimalValue]) OVER ()
FROM
	[WindowFunctionTestEntity] [t1]

BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @argument Float -- Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(@argument) WITHIN GROUP (ORDER BY [t1].[IntValue] DESC) OVER ()
FROM
	[WindowFunctionTestEntity] [t1]

