﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

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
				LEFT JOIN [Parent] [a_ParentTest] ON [a].[ParentID] = [a_ParentTest].[ParentID] AND ([a].[Value1] = [a_ParentTest].[Value1] OR [a].[Value1] IS NULL AND [a_ParentTest].[Value1] IS NULL)
		WHERE
			[a_ParentTest].[ParentID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[Child] [a_1]
				WHERE
					[a_1].[ChildID] = 11 AND [a_ParentTest].[ParentID] = [a_1].[ParentID]
			)
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
ORDER BY
	[d].[ChildID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005

SELECT
	[a].[ParentID],
	[a_ParentTest].[ParentID]
FROM
	[Parent] [a]
		LEFT JOIN [Parent] [a_ParentTest] ON [a].[ParentID] = [a_ParentTest].[ParentID] AND ([a].[Value1] = [a_ParentTest].[Value1] OR [a].[Value1] IS NULL AND [a_ParentTest].[Value1] IS NULL)
WHERE
	[a_ParentTest].[ParentID] IS NULL OR EXISTS(
		SELECT
			*
		FROM
			[Child] [a_1]
		WHERE
			[a_1].[ChildID] = 11 AND [a_ParentTest].[ParentID] = [a_1].[ParentID]
	)

