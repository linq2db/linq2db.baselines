-- SqlServer.2012
SELECT
	[t].[Id],
	RANK() OVER (ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

