﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[a_Parent].[ParentID],
	[m_1].[ChildID]
FROM
	[Child] [m_1]
		LEFT JOIN [Parent] [a_Parent] ON ([m_1].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] IS NOT NULL AND [m_1].[ParentID] > 0
ORDER BY
	[m_1].[ChildID] DESC

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[a_Parent].[ParentID],
	[m_1].[ChildID]
FROM
	[Child] [m_1]
		LEFT JOIN [Parent] [a_Parent] ON ([m_1].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] IS NOT NULL AND [m_1].[ParentID] > 0
ORDER BY
	[m_1].[ChildID] DESC

