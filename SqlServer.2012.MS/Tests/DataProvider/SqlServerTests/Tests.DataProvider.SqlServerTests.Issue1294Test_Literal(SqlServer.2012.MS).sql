BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

