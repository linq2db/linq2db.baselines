BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[IsActive]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[ParentRecord] [t1]
	) [m_1]
		INNER JOIN [ChildRecord] [d] ON [m_1].[Id] = [d].[ParentId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[IsActive]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[ParentRecord] [t1]
	) [m_1]
		INNER JOIN [ChildRecord] [d] ON [m_1].[Id] = [d].[ParentId]
WHERE
	[d].[IsActive]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[ParentRecord] [t1]

