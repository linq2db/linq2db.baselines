﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId],
	[d_1].[SubId],
	[d_1].[cond],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SampleClass1] [t1]
	) [m_1]
		INNER JOIN (
			SELECT
				[a_SubItem].[Id] as [cond],
				[a_SubItem].[Value] as [Value_1],
				[d].[Id],
				[d].[ParentId],
				[d].[SubId],
				ROW_NUMBER() OVER (PARTITION BY [d].[ParentId] ORDER BY [d].[Id]) as [rn]
			FROM
				[ChildEntitity] [d]
					LEFT JOIN [SubEntitity] [a_SubItem] ON [d].[SubId] = [a_SubItem].[Id]
			WHERE
				[d].[ParentId] % 3 = 0
		) [d_1] ON [m_1].[Id] = [d_1].[ParentId] AND [d_1].[rn] <= @p

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass1] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId],
	[d_1].[SubId],
	[d_1].[cond],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SampleClass2] [t1]
	) [m_1]
		INNER JOIN (
			SELECT
				[a_SubItem].[Id] as [cond],
				[a_SubItem].[Value] as [Value_1],
				[d].[Id],
				[d].[ParentId],
				[d].[SubId],
				ROW_NUMBER() OVER (PARTITION BY [d].[ParentId] ORDER BY [d].[Id]) as [rn]
			FROM
				[ChildEntitity] [d]
					LEFT JOIN [SubEntitity] [a_SubItem] ON [d].[SubId] = [a_SubItem].[Id]
			WHERE
				[d].[ParentId] % 3 = 0
		) [d_1] ON [m_1].[Id] = [d_1].[ParentId] AND [d_1].[rn] <= @p

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass2] [t1]

