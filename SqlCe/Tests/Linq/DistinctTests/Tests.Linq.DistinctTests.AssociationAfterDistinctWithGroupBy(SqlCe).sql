-- SqlCe

SELECT
	[a_Parent_1].[ParentID] as [Key_1],
	COUNT(*) as [Count_1]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID],
			[g_1].[ChildID],
			[a_Parent].[ParentID] as [ParentID_1],
			[a_Parent].[Value1]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
	) [t1]
		LEFT JOIN [Parent] [a_Parent_1] ON [t1].[ParentID] = [a_Parent_1].[ParentID]
GROUP BY
	[a_Parent_1].[ParentID]
ORDER BY
	[a_Parent_1].[ParentID]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID] as [cond],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

