-- SqlServer.2019
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

