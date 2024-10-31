﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[Key_1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3') as [Key_1]
		FROM
			[Child] [g_1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[Key_1] = IIF([d].[ParentID] > 2, IIF([d].[ParentID] > 3, '1', '2'), '3'))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3') as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

