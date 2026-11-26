-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[a].[Id]
FROM
	[Activity] [a]
ORDER BY
	[a].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	MAX(CASE
		WHEN [r].[TheKey] = 10 THEN [rub].[IdeRub]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [r].[TheKey] = 20 THEN [rub].[IdeRub]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [r].[TheKey] = 30 THEN [rub].[IdeRub]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [r].[TheKey] = 10 THEN [rub].[LibRub]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [r].[TheKey] = 20 THEN [rub].[LibRub]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [r].[TheKey] = 30 THEN [rub].[LibRub]
		ELSE NULL
	END)
FROM
	[ModTemplate] [r]
		INNER JOIN [Activity] [act] ON [r].[TheKey] = [act].[Id]
		INNER JOIN [CoaMask] [cm] ON [r].[Id] = [cm].[Id]
		LEFT JOIN [AtiRub] [pos] ON [pos].[Id] = [r].[PosRubId]
		LEFT JOIN [IasRub] [rub] ON [rub].[Id] = [r].[RubId]
GROUP BY
	[r].[Id]
HAVING
	MAX(CASE
		WHEN [r].[TheKey] = 20 THEN [rub].[IdeRub]
		ELSE NULL
	END) = 'IDE-B'

