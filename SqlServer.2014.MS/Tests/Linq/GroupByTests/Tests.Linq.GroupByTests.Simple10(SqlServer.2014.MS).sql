BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[Key_1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID] as [Key_1]
		FROM
			[Child] [g_1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Key_1] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

