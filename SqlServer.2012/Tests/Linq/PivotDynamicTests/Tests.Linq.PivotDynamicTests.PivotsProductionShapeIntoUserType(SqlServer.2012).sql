-- SqlServer.2012
SELECT
	[a].[Id]
FROM
	[Activity] [a]
ORDER BY
	[a].[Id]

-- SqlServer.2012
SELECT
	[e].[Id],
	MAX([cm].[Name]),
	MAX([pos].[LibRub]),
	MAX([e].[ModifiedAt]),
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

-- SqlServer.2012
SELECT
	[r_1].[Key_1],
	[r_1].[CoaName],
	[r_1].[PosLibRub],
	[r_1].[ModifiedAt],
	[r_1].[IDE_10],
	[r_1].[IDE_20],
	[r_1].[IDE_30],
	[r_1].[LIB_10],
	[r_1].[LIB_20],
	[r_1].[LIB_30]
FROM
	(
		SELECT
			[r].[Id] as [Key_1],
			MAX(IIF([r].[TheKey] = 20, [rub].[IdeRub], NULL)) as [IDE_20],
			MAX([cm].[Name]) as [CoaName],
			MAX([pos].[LibRub]) as [PosLibRub],
			MAX([r].[ModifiedAt]) as [ModifiedAt],
			MAX(IIF([r].[TheKey] = 10, [rub].[IdeRub], NULL)) as [IDE_10],
			MAX(IIF([r].[TheKey] = 30, [rub].[IdeRub], NULL)) as [IDE_30],
			MAX(IIF([r].[TheKey] = 10, [rub].[LibRub], NULL)) as [LIB_10],
			MAX(IIF([r].[TheKey] = 20, [rub].[LibRub], NULL)) as [LIB_20],
			MAX(IIF([r].[TheKey] = 30, [rub].[LibRub], NULL)) as [LIB_30]
		FROM
			[ModTemplate] [r]
				INNER JOIN [Activity] [act] ON [r].[TheKey] = [act].[Id]
				INNER JOIN [CoaMask] [cm] ON [r].[Id] = [cm].[Id]
				LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [r].[PosRubId]
				LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [r].[RubId]
		GROUP BY
			[r].[Id]
	) [r_1]
WHERE
	[r_1].[Key_1] = 1 AND [r_1].[IDE_20] = N'IDE-B'

-- SqlServer.2012
SELECT
	[e].[Id],
	MAX([cm].[Name]),
	MAX([pos].[LibRub]),
	MAX([e].[ModifiedAt]),
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

-- SqlServer.2012
SELECT
	[e].[Id],
	MAX([cm].[Name]),
	MAX([pos].[LibRub]),
	MAX([e].[ModifiedAt]),
	MAX(IIF([e].[TheKey] = 10, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 20, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 30, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 40, [rub].[IdeRub], NULL)),
	MAX(IIF([e].[TheKey] = 10, [rub].[LibRub], NULL)),
	MAX(IIF([e].[TheKey] = 20, [rub].[LibRub], NULL)),
	MAX(IIF([e].[TheKey] = 30, [rub].[LibRub], NULL)),
	MAX(IIF([e].[TheKey] = 40, [rub].[LibRub], NULL))
FROM
	[ModTemplate] [e]
		INNER JOIN [Activity] [act] ON [e].[TheKey] = [act].[Id]
		INNER JOIN [CoaMask] [cm] ON [e].[Id] = [cm].[Id]
		LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [e].[PosRubId]
		LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [e].[RubId]
GROUP BY
	[e].[Id]

