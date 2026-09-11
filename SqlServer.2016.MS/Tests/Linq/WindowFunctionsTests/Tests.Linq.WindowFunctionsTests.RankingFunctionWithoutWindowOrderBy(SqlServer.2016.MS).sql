-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t].[Id],
	[t].[CategoryId],
	ROW_NUMBER() OVER (PARTITION BY [t].[CategoryId] ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

