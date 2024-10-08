BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[Key_1],
	[m_1].[Key_2],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID] + 1 as [Key_1],
			[t1].[ChildID] as [Key_2]
		FROM
			[GrandChild] [t1]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON ([m_1].[Key_1] = [d].[ParentID] + 1 OR [m_1].[Key_1] IS NULL AND [d].[ParentID] IS NULL) AND ([m_1].[Key_2] = [d].[ChildID] OR [m_1].[Key_2] IS NULL AND [d].[ChildID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

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

