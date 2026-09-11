-- SqlServer.2016
SELECT
	[t].[Id],
	NTILE(4) OVER (ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

