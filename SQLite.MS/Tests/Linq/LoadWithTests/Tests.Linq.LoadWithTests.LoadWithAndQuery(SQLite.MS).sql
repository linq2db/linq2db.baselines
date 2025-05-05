﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	'QueryResult' || [d].[Id]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		INNER JOIN [MainItem2] [mm] ON [d].[Id] / 10 = [mm].[Id]
WHERE
	[d].[Id] % 2 = 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[m_2].[Id],
	[m_2].[Id_1],
	[d_2].[Id],
	[d_2].[Value_1],
	[d_2].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
	) [m_2]
		INNER JOIN (
			SELECT
				[d_1].[Id],
				[d_1].[Value] as [Value_1],
				[d_1].[ParentId],
				ROW_NUMBER() OVER (PARTITION BY [d_1].[ParentId] ORDER BY [d_1].[ParentId]) as [rn]
			FROM
				[SubItem1_Sub] [d_1]
			WHERE
				[d_1].[Id] = 1
		) [d_2] ON [m_2].[Id] = [d_2].[ParentId] AND [d_2].[rn] <= @p

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	[SubItem1] [s]
		LEFT JOIN [MainItem] [a_Parent] ON [s].[ParentId] = [a_Parent].[Id] AND [a_Parent].[Id] % 3 = 0

