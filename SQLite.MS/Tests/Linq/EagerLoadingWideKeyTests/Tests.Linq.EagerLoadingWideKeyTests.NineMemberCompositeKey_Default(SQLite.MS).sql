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
(1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),
(2,1,1,1,1,1,1,1,2,1,0,0,0,0,0,0)

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
(1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,'p1'),
(2,1,1,1,1,1,1,1,2,1,0,0,0,0,0,0,'p2')

-- SQLite.MS SQLite
SELECT
	[m_1].[K1],
	[m_1].[K2],
	[m_1].[K3],
	[m_1].[K4],
	[m_1].[K5],
	[m_1].[K6],
	[m_1].[K7],
	[m_1].[K8],
	[m_1].[K9],
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
		SELECT DISTINCT
			[p].[K1],
			[p].[K2],
			[p].[K3],
			[p].[K4],
			[p].[K5],
			[p].[K6],
			[p].[K7],
			[p].[K8],
			[p].[K9]
		FROM
			[KParent] [p]
	) [m_1]
		INNER JOIN [KChild] [d] ON [d].[F1] = [m_1].[K1] AND [d].[F2] = [m_1].[K2] AND [d].[F3] = [m_1].[K3] AND [d].[F4] = [m_1].[K4] AND [d].[F5] = [m_1].[K5] AND [d].[F6] = [m_1].[K6] AND [d].[F7] = [m_1].[K7] AND [d].[F8] = [m_1].[K8] AND [d].[F9] = [m_1].[K9]
ORDER BY
	[d].[Id]
;
SELECT
	[p].[Id],
	[p].[K8],
	[p].[K1],
	[p].[K2],
	[p].[K3],
	[p].[K4],
	[p].[K5],
	[p].[K6],
	[p].[K7],
	[p].[K9]
FROM
	[KParent] [p]
ORDER BY
	[p].[Id]

