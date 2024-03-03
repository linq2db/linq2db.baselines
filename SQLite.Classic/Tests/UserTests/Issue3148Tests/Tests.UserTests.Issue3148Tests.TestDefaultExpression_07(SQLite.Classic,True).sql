BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_GrandChildren].[ParentID],
	[a_GrandChildren].[ChildID],
	[a_GrandChildren].[GrandChildID]
FROM
	[GrandChild] [a_GrandChildren]
WHERE
	0 = [a_GrandChildren].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_GrandChildren].[ParentID],
	[a_GrandChildren].[ChildID],
	[a_GrandChildren].[GrandChildID]
FROM
	[GrandChild] [a_GrandChildren]
WHERE
	0 = [a_GrandChildren].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

