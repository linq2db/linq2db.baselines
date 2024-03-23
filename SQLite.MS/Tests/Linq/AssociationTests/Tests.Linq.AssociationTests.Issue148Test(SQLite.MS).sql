BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[n].[ParentID]
FROM
	[Parent] [n]

