-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t].[Id],
	RANK() OVER (ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

