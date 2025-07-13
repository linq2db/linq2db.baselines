BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[cond],
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [cond],
			[t2].[Id]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[Issue4797Parent] [t1]
			) [t2]
				INNER JOIN [Issue4797Child] [d] ON [t2].[Id] = [d].[ParentId]
				LEFT JOIN [Issue4797Parent] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_1]
		INNER JOIN [Issue4797Child] [d_1] ON [m_1].[cond] = [d_1].[ParentId] OR [m_1].[cond] IS NULL AND [d_1].[ParentId] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[a_Parent].[Id]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Issue4797Parent] [t1]
	) [m_1]
		INNER JOIN [Issue4797Child] [d] ON [m_1].[Id] = [d].[ParentId]
		LEFT JOIN [Issue4797Parent] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Issue4797Parent] [t1]

