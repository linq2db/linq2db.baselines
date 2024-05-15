BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[n].[ParentID]
FROM
	[Parent] [n]

