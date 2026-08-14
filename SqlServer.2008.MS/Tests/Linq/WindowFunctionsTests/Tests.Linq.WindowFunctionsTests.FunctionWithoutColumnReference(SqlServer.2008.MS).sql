-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	CASE
		WHEN SUM([t].[IntValue]) OVER () > 0 THEN 1
		ELSE 0
	END
FROM
	[WindowFunctionTestEntity] [t]

