BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Cast([a_Parent].[ParentID] as NVarChar(255)),
	[m_1].[ChildID]
FROM
	[Child] [m_1]
		LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] IS NOT NULL AND [m_1].[ParentID] > 0
ORDER BY
	[m_1].[ChildID] DESC

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Cast([a_Parent].[ParentID] as NVarChar(255)),
	[m_1].[ChildID]
FROM
	[Child] [m_1]
		LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] IS NOT NULL AND [m_1].[ParentID] > 0
ORDER BY
	[m_1].[ChildID] DESC

