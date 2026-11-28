-- SqlServer.2025.MS SqlServer.2025
SELECT
	[a].[Id]
FROM
	[Activity] [a]
ORDER BY
	[a].[Id]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[g_1].[Id],
	MAX([cm].[Name]),
	MAX([pos].[LibRub]),
	MAX([g_1].[ModifiedAt]),
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

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[r].[Key_1],
	[r].[CoaName],
	[r].[PosLibRub],
	[r].[ModifiedAt],
	[r].[IDE_10],
	[r].[IDE_20],
	[r].[IDE_30],
	[r].[LIB_10],
	[r].[LIB_20],
	[r].[LIB_30]
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			MAX(IIF([g_1].[TheKey] = 20, [rub].[IdeRub], NULL)) as [IDE_20],
			MAX([cm].[Name]) as [CoaName],
			MAX([pos].[LibRub]) as [PosLibRub],
			MAX([g_1].[ModifiedAt]) as [ModifiedAt],
			MAX(IIF([g_1].[TheKey] = 10, [rub].[IdeRub], NULL)) as [IDE_10],
			MAX(IIF([g_1].[TheKey] = 30, [rub].[IdeRub], NULL)) as [IDE_30],
			MAX(IIF([g_1].[TheKey] = 10, [rub].[LibRub], NULL)) as [LIB_10],
			MAX(IIF([g_1].[TheKey] = 20, [rub].[LibRub], NULL)) as [LIB_20],
			MAX(IIF([g_1].[TheKey] = 30, [rub].[LibRub], NULL)) as [LIB_30]
		FROM
			[ModTemplate] [g_1]
				INNER JOIN [Activity] [act] ON [g_1].[TheKey] = [act].[Id]
				INNER JOIN [CoaMask] [cm] ON [g_1].[Id] = [cm].[Id]
				LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [g_1].[PosRubId]
				LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [g_1].[RubId]
		GROUP BY
			[g_1].[Id]
	) [r]
WHERE
	[r].[Key_1] = 1 AND [r].[IDE_20] = N'IDE-B'

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[g_1].[Id],
	MAX([cm].[Name]),
	MAX([pos].[LibRub]),
	MAX([g_1].[ModifiedAt]),
	MAX(IIF([g_1].[TheKey] = 10, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 20, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 30, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 40, [rub].[IdeRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 10, [rub].[LibRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 20, [rub].[LibRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 30, [rub].[LibRub], NULL)),
	MAX(IIF([g_1].[TheKey] = 40, [rub].[LibRub], NULL))
FROM
	[ModTemplate] [g_1]
		INNER JOIN [Activity] [act] ON [g_1].[TheKey] = [act].[Id]
		INNER JOIN [CoaMask] [cm] ON [g_1].[Id] = [cm].[Id]
		LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [g_1].[PosRubId]
		LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [g_1].[RubId]
GROUP BY
	[g_1].[Id]

