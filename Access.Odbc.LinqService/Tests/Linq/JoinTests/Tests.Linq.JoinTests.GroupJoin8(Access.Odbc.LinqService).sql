﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])
ORDER BY
	[d].[ChildID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]

