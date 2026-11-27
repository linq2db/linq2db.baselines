-- SqlServer.2014.MS SqlServer.2014
SELECT
	[x].[Id]
FROM
	[SumTableFunctionResult] [x]
WHERE
	[x].[Id] IN (
		SELECT
			[x_1].[Id]
		FROM
			[SumTableFunction](1, 2) [x_1]
		UNION
		SELECT
			[x_2].[Id]
		FROM
			[SumTableFunction](1, 3) [x_2]
	)

