BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[cond],
	[m_1].[ParentID],
	[d_1].[ParentID] as [ParentID_1],
	[d_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID] as [cond],
			[t2].[ParentID]
		FROM
			(
				SELECT DISTINCT
					[t1].[ParentID]
				FROM
					(
						SELECT TOP (1)
							[p].[ParentID]
						FROM
							[Parent] [p]
						WHERE
							[p].[ParentID] < 2
					) [t1]
			) [t2]
				INNER JOIN [Child] [d] ON [t2].[ParentID] = [d].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d_1] ON [m_1].[cond] = [d_1].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID],
	[a_Parent].[ParentID] as [cond],
	[a_Parent].[Value1]
FROM
	(
		SELECT TOP (1)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] < 2
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] < 2

BeforeExecute
DisposeTransaction
