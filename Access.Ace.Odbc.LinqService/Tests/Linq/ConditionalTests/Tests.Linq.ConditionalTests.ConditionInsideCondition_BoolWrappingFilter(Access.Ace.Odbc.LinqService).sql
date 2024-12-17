﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[s].[Value_1]
FROM
	(
		SELECT
			IIF([p].[ParentID] MOD 2 = 0, IIF([p].[ParentID] MOD 3 = 0, True, False), IIF([p].[ParentID] MOD 4 = 0, IIF([p].[ParentID] > 0, True, False), IIF([p].[ParentID] < 5, True, False))) as [Value_1]
		FROM
			[Parent] [p]
	) [s]
WHERE
	[s].[Value_1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

