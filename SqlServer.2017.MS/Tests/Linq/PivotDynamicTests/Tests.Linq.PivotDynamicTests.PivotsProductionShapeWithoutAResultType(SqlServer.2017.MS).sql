-- SqlServer.2017.MS SqlServer.2017
SELECT
	[a].[Id]
FROM
	[Activity] [a]
ORDER BY
	[a].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[g_1].[Id],
	MAX(IIF([g_1].[TheKey] = 10, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 20, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 30, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 10, [rub].[LibRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 20, [rub].[LibRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 30, [rub].[LibRub], NULL))
FROM
	[ModTemplate] [g_1]
		INNER JOIN [Activity] [act] ON [g_1].[TheKey] = [act].[Id]
		INNER JOIN [CoaMask] [cm] ON [g_1].[Id] = [cm].[Id]
		LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [g_1].[PosRubId]
		LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [g_1].[RubId]
GROUP BY
	[g_1].[Id]

