BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[m_1].[ChildID],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[ParentID],
			[t2].[ChildID]
		FROM
			(
				SELECT
					[t1].[ParentID],
					[t1].[ChildID]
				FROM
					[GrandChild] [t1]
				GROUP BY
					[t1].[ParentID],
					[t1].[ChildID]
			) [t2]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON ([m_1].[ParentID] = [d].[ParentID] OR [m_1].[ParentID] IS NULL AND [d].[ParentID] IS NULL) AND ([m_1].[ChildID] = [d].[ChildID] OR [m_1].[ChildID] IS NULL AND [d].[ChildID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

