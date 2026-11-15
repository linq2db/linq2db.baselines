-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[l].[Id],
	ROW_NUMBER() OVER (PARTITION BY [l].[Group] ORDER BY ([r].[Payload] IS NOT NULL) DESC, [l].[Id])
FROM
	[Issue5123Left] [l]
		LEFT JOIN [Issue5123Right] [r] ON ([l].[Id] = [r].[Id])
ORDER BY
	[l].[Id]

