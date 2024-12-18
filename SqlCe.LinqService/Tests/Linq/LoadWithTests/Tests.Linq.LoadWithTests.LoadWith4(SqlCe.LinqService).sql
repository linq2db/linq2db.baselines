﻿BeforeExecute
-- SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[t1].[COUNT_1],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[p].[ParentID] = [a_GrandChildren].[ParentID] AND [a_GrandChildren].[ParentID] IS NOT NULL
		) [t1]

