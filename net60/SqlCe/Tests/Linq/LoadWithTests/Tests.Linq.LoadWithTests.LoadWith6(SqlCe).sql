BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[lw_Child].[ParentID],
	[lw_Child].[ChildID],
	[detail].[ParentID],
	[detail].[ChildID],
	[detail].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [lw_Child]
		INNER JOIN [GrandChild] [detail]
			LEFT JOIN [Child] [a_Child] ON [detail].[ParentID] = [a_Child].[ParentID] AND [detail].[ChildID] = [a_Child].[ChildID]
		ON [lw_Child].[ParentID] = [detail].[ParentID] AND [lw_Child].[ChildID] = [detail].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t2].[Count_1],
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[GrandChild] [t1]
			GROUP BY
				[t1].[ParentID],
				[t1].[ChildID]
		) [t2] ON [p].[ParentID] = [t2].[ParentID] AND [p].[ChildID] = [t2].[ChildID]

