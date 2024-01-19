BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID]
		FROM
			[GrandChild] [p]
				LEFT JOIN [Child] [a_Child] ON ([p].[ParentID] = [a_Child].[ParentID] OR [p].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([p].[ChildID] = [a_Child].[ChildID] OR [p].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
				LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[p].[ChildID] > 0
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] IS NOT NULL AND [m_1].[ParentID] = [d].[ParentID]
ORDER BY
	[d].[ChildID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_Parent].[ParentID]
FROM
	[GrandChild] [p]
		LEFT JOIN [Child] [a_Child] ON ([p].[ParentID] = [a_Child].[ParentID] OR [p].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([p].[ChildID] = [a_Child].[ChildID] OR [p].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
WHERE
	[p].[ChildID] > 0

