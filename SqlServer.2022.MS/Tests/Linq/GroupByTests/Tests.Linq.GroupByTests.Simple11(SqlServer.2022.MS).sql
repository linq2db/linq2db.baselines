BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[m_1].[ParentID],
	[m_1].[ChildID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID] + 1 as [ParentID],
			[t1].[ChildID]
		FROM
			[GrandChild] [t1]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON ([m_1].[ParentID] = [d].[ParentID] + 1 OR [m_1].[ParentID] IS NULL AND [d].[ParentID] IS NULL) AND ([m_1].[ChildID] = [d].[ChildID] OR [m_1].[ChildID] IS NULL AND [d].[ChildID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID] + 1 as [ParentID],
			[t1].[ChildID]
		FROM
			[GrandChild] [t1]
	) [t2]
GROUP BY
	[t2].[ParentID],
	[t2].[ChildID]

