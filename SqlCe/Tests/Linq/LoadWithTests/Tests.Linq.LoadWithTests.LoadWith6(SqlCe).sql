-- SqlCe

SELECT
	[m_1].[ParentID],
	[m_1].[ChildID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID] as [ChildID_1],
	[d].[GrandChildID],
	[a_Child].[ParentID] as [cond],
	[a_Child].[ChildID] as [ChildID_2],
	[a_Parent].[ParentID] as [cond_1],
	[a_Parent].[Value1]
FROM
	[Child] [m_1]
		INNER JOIN [GrandChild] [d] ON [m_1].[ParentID] = [d].[ParentID] AND [m_1].[ChildID] = [d].[ChildID]
		LEFT JOIN [Child] [a_Child] ON [d].[ParentID] = [a_Child].[ParentID] AND [d].[ChildID] = [a_Child].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]

-- SqlCe

SELECT
	[t1].[COUNT_1],
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[p].[ParentID] = [a_GrandChildren].[ParentID] AND [p].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]

