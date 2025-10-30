BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[ParentID],
	[m_1].[ChildID],
	[m_1].[ParentID_1],
	[d_1].[ParentID] as [ParentID_2],
	[d_1].[ChildID] as [ChildID_1],
	[d_1].[GrandChildID],
	[a_Child].[ParentID] as [cond],
	[a_Child].[ChildID] as [ChildID_2],
	[a_Parent].[ParentID] as [cond_1],
	[a_Parent].[Value1]
FROM
	(
		SELECT DISTINCT
			[d].[ParentID],
			[d].[ChildID],
			[t1].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT DISTINCT
					[p].[ParentID]
				FROM
					[Parent] [p]
			) [t1]
				INNER JOIN [Child] [d] ON [t1].[ParentID] = [d].[ParentID]
	) [m_1]
		INNER JOIN [GrandChild] [d_1] ON [m_1].[ParentID] = [d_1].[ParentID] AND [m_1].[ChildID] = [d_1].[ChildID]
		LEFT JOIN [Child] [a_Child] ON [d_1].[ParentID] = [a_Child].[ParentID] AND [d_1].[ChildID] = [a_Child].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Count_1],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[p].[ParentID] = [a_GrandChildren].[ParentID]
		) [t1]

