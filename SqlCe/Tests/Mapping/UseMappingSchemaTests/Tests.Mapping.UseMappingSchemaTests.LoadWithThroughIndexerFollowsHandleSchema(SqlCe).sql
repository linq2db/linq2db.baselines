-- SqlCe
SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID],
	[a_Parent_1].[ParentID] as [ParentID_2]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent_1] ON [d].[ParentID] = [a_Parent_1].[ParentID]

-- SqlCe
SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID],
	[a_Parent].[ParentID] as [ParentID_2]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]

