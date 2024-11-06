BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[Value1]
FROM
	(
		SELECT DISTINCT
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [m_1],
	[Parent] [d]
		LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[d].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
DisposeTransaction
