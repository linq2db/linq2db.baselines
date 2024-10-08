BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[m_1].[Key_2],
	[d].[ParentID],
	[d].[ChildID],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID] as [Key_1],
			[t1].[ChildID] as [Key_2]
		FROM
			[GrandChild] [t1]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON ([m_1].[Key_1] = [d].[ParentID] OR [m_1].[Key_1] IS NULL AND [d].[ParentID] IS NULL) AND ([m_1].[Key_2] = [d].[ChildID] OR [m_1].[Key_2] IS NULL AND [d].[ChildID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

