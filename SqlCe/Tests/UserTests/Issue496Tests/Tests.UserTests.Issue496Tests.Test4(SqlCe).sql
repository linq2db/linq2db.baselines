BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID] as [ParentID_1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON CAST([m_1].[ParentID] AS BigInt) = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

