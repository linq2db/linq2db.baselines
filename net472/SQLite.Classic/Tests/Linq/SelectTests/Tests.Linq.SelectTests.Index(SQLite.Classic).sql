﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_Parent].[ParentID],
	[m_1].[ChildID]
FROM
	[Child] [m_1]
		LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	([a_Parent].[ParentID] IS NOT NULL OR [a_Parent].[Value1] IS NOT NULL) AND
	[m_1].[ParentID] > 0
ORDER BY
	[m_1].[ChildID] DESC

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_Parent].[ParentID],
	[m_1].[ChildID]
FROM
	[Child] [m_1]
		LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	([a_Parent].[ParentID] IS NOT NULL OR [a_Parent].[Value1] IS NOT NULL) AND
	[m_1].[ParentID] > 0
ORDER BY
	[m_1].[ChildID] DESC

