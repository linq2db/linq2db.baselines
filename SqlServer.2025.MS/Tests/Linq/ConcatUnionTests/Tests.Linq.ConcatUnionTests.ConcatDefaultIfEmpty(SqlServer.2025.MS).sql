﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	CAST(0 AS Int),
	[t1].[ParentID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] = 1
UNION ALL
SELECT
	CAST(1 AS Int),
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p_1]
WHERE
	[p_1].[ParentID] <> 1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

