BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t1].[ParentID]
FROM
	[Parent] [t1]

