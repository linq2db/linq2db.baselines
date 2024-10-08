﻿BeforeExecute
BeginTransactionAsync(Serializable)
BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent1].[ParentID]
		FROM
			[Child] [t1]
				INNER JOIN [Parent] [a_Parent1] ON [t1].[ParentID] = [a_Parent1].[ParentID]
		GROUP BY
			[a_Parent1].[ParentID],
			[a_Parent1].[Value1]
	) [m_1]
		INNER JOIN ([Child] [d]
			INNER JOIN [Parent] [a_Parent1_1] ON [d].[ParentID] = [a_Parent1_1].[ParentID])
		ON [m_1].[ParentID] = [a_Parent1_1].[ParentID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[a_Parent1].[ParentID],
	[a_Parent1].[Value1]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [a_Parent1] ON [t1].[ParentID] = [a_Parent1].[ParentID]
GROUP BY
	[a_Parent1].[ParentID],
	[a_Parent1].[Value1]

BeforeExecute
DisposeTransactionAsync
