BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
			[Issue1294](1, 3) [x_2]
	)

