BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

