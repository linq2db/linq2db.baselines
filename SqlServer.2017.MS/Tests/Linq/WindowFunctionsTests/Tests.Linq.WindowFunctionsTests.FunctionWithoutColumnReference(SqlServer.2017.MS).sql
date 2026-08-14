-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	IIF(SUM([t].[IntValue]) OVER () > 0, 1, 0)
FROM
	[WindowFunctionTestEntity] [t]

