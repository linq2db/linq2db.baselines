-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t].[Id],
	RANK() OVER (ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

