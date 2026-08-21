-- SqlServer.2022.MS SqlServer.2022
DECLARE @rowCount Int -- Int32
SET     @rowCount = 9
DECLARE @p Int -- Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	IIF(COUNT(*) OVER () = @rowCount AND SUM([t].[IntValue]) OVER () > 0, 1, 0),
	IIF(COUNT(*) OVER () = @p AND SUM([t].[IntValue]) OVER () > 0, 1, 0)
FROM
	[WindowFunctionTestEntity] [t]

