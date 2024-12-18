﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_ParentTest].[ParentID]
		FROM
			[Parent] [a]
				LEFT JOIN [Parent] [a_ParentTest] ON [a].[ParentID] = [a_ParentTest].[ParentID] AND ([a].[Value1] = [a_ParentTest].[Value1] AND [a].[Value1] IS NOT NULL AND [a_ParentTest].[Value1] IS NOT NULL OR [a].[Value1] IS NULL AND [a_ParentTest].[Value1] IS NULL)
		WHERE
			[a_ParentTest].[ParentID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[Child] [a_1]
				WHERE
					[a_ParentTest].[ParentID] = [a_1].[ParentID] AND [a_1].[ChildID] = 11
			)
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID] AND [m_1].[ParentID] IS NOT NULL
ORDER BY
	[d].[ChildID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[a].[ParentID],
	[a_ParentTest].[ParentID]
FROM
	[Parent] [a]
		LEFT JOIN [Parent] [a_ParentTest] ON [a].[ParentID] = [a_ParentTest].[ParentID] AND ([a].[Value1] = [a_ParentTest].[Value1] AND [a].[Value1] IS NOT NULL AND [a_ParentTest].[Value1] IS NOT NULL OR [a].[Value1] IS NULL AND [a_ParentTest].[Value1] IS NULL)
WHERE
	[a_ParentTest].[ParentID] IS NULL OR EXISTS(
		SELECT
			*
		FROM
			[Child] [a_1]
		WHERE
			[a_ParentTest].[ParentID] = [a_1].[ParentID] AND [a_1].[ChildID] = 11
	)

