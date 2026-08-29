-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t].[Id],
	RANK() OVER (ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

