-- SQLite.MS SQLite

INSERT INTO [KParent]
(
	[Id],
	[K1],
	[K2],
	[K3],
	[K4],
	[K5],
	[K6],
	[K7],
	[K8],
	[K9],
	[K10],
	[K11],
	[K12],
	[K13],
	[K14],
	[K15]
)
VALUES
(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
(2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2)

-- SQLite.MS SQLite

INSERT INTO [KChild]
(
	[Id],
	[F1],
	[F2],
	[F3],
	[F4],
	[F5],
	[F6],
	[F7],
	[F8],
	[F9],
	[F10],
	[F11],
	[F12],
	[F13],
	[F14],
	[F15],
	[Tag]
)
VALUES
(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'p1'),
(2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,'p2')

-- SQLite.MS SQLite

SELECT
	[p].[Id],
	[p].[K15],
	[p].[K1],
	[p].[K2],
	[p].[K3],
	[p].[K4],
	[p].[K5],
	[p].[K6],
	[p].[K7],
	[p].[K8],
	[p].[K9],
	[p].[K10],
	[p].[K11],
	[p].[K12],
	[p].[K13],
	[p].[K14]
FROM
	[KParent] [p]
ORDER BY
	[p].[Id]

-- SQLite.MS SQLite

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[k_1].[Item3],
	[k_1].[Item4],
	[k_1].[Item5],
	[k_1].[Item6],
	[k_1].[Item7],
	[k_1].[Rest_Item1],
	[k_1].[Rest_Item2],
	[k_1].[Rest_Item3],
	[k_1].[Rest_Item4],
	[k_1].[Rest_Item5],
	[k_1].[Rest_Item6],
	[k_1].[Rest_Item7],
	[k_1].[Rest_Rest_Item1],
	[d].[Id],
	[d].[F1],
	[d].[F2],
	[d].[F3],
	[d].[F4],
	[d].[F5],
	[d].[F6],
	[d].[F7],
	[d].[F8],
	[d].[F9],
	[d].[F10],
	[d].[F11],
	[d].[F12],
	[d].[F13],
	[d].[F14],
	[d].[F15],
	[d].[Tag]
FROM
	(
		SELECT NULL [Item1], NULL [Item2], NULL [Item3], NULL [Item4], NULL [Item5], NULL [Item6], NULL [Item7], NULL [Rest_Item1], NULL [Rest_Item2], NULL [Rest_Item3], NULL [Rest_Item4], NULL [Rest_Item5], NULL [Rest_Item6], NULL [Rest_Item7], NULL [Rest_Rest_Item1] WHERE 1 = 0
		UNION ALL
		VALUES
			(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1), (1,1,1,1,1,1,1,1,1,1,1,1,1,1,2)
		) [k_1]
		INNER JOIN [KChild] [d] ON [d].[F1] = [k_1].[Item1] AND [d].[F2] = [k_1].[Item2] AND [d].[F3] = [k_1].[Item3] AND [d].[F4] = [k_1].[Item4] AND [d].[F5] = [k_1].[Item5] AND [d].[F6] = [k_1].[Item6] AND [d].[F7] = [k_1].[Item7] AND [d].[F8] = [k_1].[Rest_Item1] AND [d].[F9] = [k_1].[Rest_Item2] AND [d].[F10] = [k_1].[Rest_Item3] AND [d].[F11] = [k_1].[Rest_Item4] AND [d].[F12] = [k_1].[Rest_Item5] AND [d].[F13] = [k_1].[Rest_Item6] AND [d].[F14] = [k_1].[Rest_Item7] AND [d].[F15] = [k_1].[Rest_Rest_Item1]
ORDER BY
	[d].[Id]

