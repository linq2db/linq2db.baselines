-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t].[Id],
	[t].[CategoryId],
	ROW_NUMBER() OVER (PARTITION BY [t].[CategoryId] ORDER BY (
		SELECT
			1
	))
FROM
	[WindowFunctionTestEntity] [t]

