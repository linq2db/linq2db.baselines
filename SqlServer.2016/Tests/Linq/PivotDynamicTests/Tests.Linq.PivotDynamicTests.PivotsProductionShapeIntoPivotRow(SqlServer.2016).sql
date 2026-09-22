-- SqlServer.2016
SELECT
	[a].[Id]
FROM
	[Activity] [a]
ORDER BY
	[a].[Id]

-- SqlServer.2016
SELECT
	[e].[Id],
	MAX(IIF([e].[TheKey] = 10, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 20, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 30, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 10, [rub].[LibRub], NULL)),
	MAX(IIF([e].[TheKey] = 20, [rub].[LibRub], NULL)),
	MAX(IIF([e].[TheKey] = 30, [rub].[LibRub], NULL))
FROM
	[ModTemplate] [e]
		INNER JOIN [Activity] [act] ON [e].[TheKey] = [act].[Id]
		INNER JOIN [CoaMask] [cm] ON [e].[Id] = [cm].[Id]
		LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [e].[PosRubId]
		LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [e].[RubId]
GROUP BY
	[e].[Id]

