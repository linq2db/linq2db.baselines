-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t].[Id],
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			5
	) DESC),
	ROW_NUMBER() OVER (ORDER BY [t].[Id]),
	ROW_NUMBER() OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

