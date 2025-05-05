BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[Id]
FROM
	[Issue1294Table] [x]
WHERE
	[x].[Id] IN (
		SELECT
			[x_1].[Id]
		FROM
			[Issue1294](1, 2) [x_1]
		UNION
		SELECT
			[x_2].[Id]
		FROM
			[Issue1294](3, 2) [x_2]
	)

