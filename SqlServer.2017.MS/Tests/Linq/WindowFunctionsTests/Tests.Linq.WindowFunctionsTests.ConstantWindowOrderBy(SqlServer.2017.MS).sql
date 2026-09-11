-- SqlServer.2017.MS SqlServer.2017
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

