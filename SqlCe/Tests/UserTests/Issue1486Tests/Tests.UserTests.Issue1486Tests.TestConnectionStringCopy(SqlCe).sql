﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[ParentID]
		FROM
			(
				SELECT TOP (1)
					[a_Parent].[ParentID]
				FROM
					[Child] [t1]
						LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
			) [t2]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
--  SqlCe

SELECT TOP (1)
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID] as [ParentID_1],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
DisposeTransaction
