BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[lw_Parent].[ParentID], 
	[detail].[ParentID], 
	[detail].[ChildID]
FROM
	( 
		SELECT DISTINCT 
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] < 2
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[lw_Parent].[ParentID], 
	[detail].[ParentID], 
	[detail].[ChildID], 
	[detail].[GrandChildID]
FROM
	( 
		SELECT DISTINCT 
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] < 2
	) [lw_Parent]
		INNER JOIN [GrandChild] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] < 2

