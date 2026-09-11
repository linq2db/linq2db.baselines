-- SqlServer.2014.MS SqlServer.2014
DECLARE @rowCount Int -- Int32
SET     @rowCount = 9
DECLARE @p Int -- Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			1
	)),
	IIF(COUNT(*) OVER () = @rowCount AND SUM([t].[IntValue]) OVER () > 0, 1, 0),
	IIF(COUNT(*) OVER () = @p AND SUM([t].[IntValue]) OVER () > 0, 1, 0)
FROM
	[WindowFunctionTestEntity] [t]

