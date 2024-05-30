BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
		WHERE
			[t1].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [ch]
		WHERE
			[t1].[ParentID] = [ch].[ParentID]
	),
	[t1].[ParentID]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1

