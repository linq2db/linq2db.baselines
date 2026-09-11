-- SqlServer.2025
SELECT
	[l].[Id],
	ROW_NUMBER() OVER (PARTITION BY [l].[Group] ORDER BY IIF([r].[Payload] IS NOT NULL, 1, 0), [l].[Id])
FROM
	[Issue5123Left] [l]
		LEFT JOIN [Issue5123Right] [r] ON [l].[Id] = [r].[Id]
ORDER BY
	[l].[Id]

