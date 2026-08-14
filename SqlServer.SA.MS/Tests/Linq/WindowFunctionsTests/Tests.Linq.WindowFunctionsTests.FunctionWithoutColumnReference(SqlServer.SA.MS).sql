-- SqlServer.SA.MS SqlServer.2019
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	IIF(SUM([t].[IntValue]) OVER () > 0, 1, 0)
FROM
	[WindowFunctionTestEntity] [t]

