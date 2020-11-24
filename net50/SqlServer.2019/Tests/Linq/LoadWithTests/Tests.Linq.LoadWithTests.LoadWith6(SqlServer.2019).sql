BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[lw_Child].[ParentID],
	[lw_Child].[ChildID],
	[detail].[ParentID],
	[detail].[ChildID],
	[detail].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Child].[ParentID_1],
	[a_Child].[Value1]
FROM
	[Child] [lw_Child]
		INNER JOIN [GrandChild] [detail] ON [lw_Child].[ParentID] = [detail].[ParentID] AND [lw_Child].[ChildID] = [detail].[ChildID]
		LEFT JOIN (
			SELECT
				[t1].[ParentID],
				[t1].[ChildID],
				[a_Parent].[ParentID] as [ParentID_1],
				[a_Parent].[Value1]
			FROM
				[Child] [t1]
					LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
		) [a_Child] ON [detail].[ParentID] = [a_Child].[ParentID] AND [detail].[ChildID] = [a_Child].[ChildID]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID] AND [p].[ChildID] = [t1].[ChildID]
	),
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p]

