BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[sub].[ParentID],
	[sub].[ParentID_1],
	[sub].[Value1]
FROM
	(
		SELECT
			[m_1].[ParentID],
			[d].[ParentID] as [ParentID_1],
			[d].[Value1]
		FROM
			(
				SELECT DISTINCT
					[ch].[ParentID]
				FROM
					[Child] [ch]
			) [m_1],
			[Parent] [d]
	) [sub]
		LEFT JOIN [Parent] [a_Parent] ON [sub].[ParentID] = [a_Parent].[ParentID]
WHERE
	[sub].[ParentID_1] = [a_Parent].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[ch].[ParentID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID]

