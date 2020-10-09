BeforeExecute
-- Access AccessOleDb

SELECT 
	[lw_Parent].[ParentID], 
	[detail].[ParentID], 
	[detail].[ChildID], 
	[a_Parent].[ParentID], 
	[a_Parent].[Value1]
FROM
	(( 
		SELECT DISTINCT 
			[t1].[ParentID]
		FROM
			( 
				SELECT TOP 1 
					[t].[ParentID]
				FROM
					[Parent] [t]
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON ([lw_Parent].[ParentID] = [detail].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON ([detail].[ParentID] = [a_Parent].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1 
	[t].[ParentID], 
	[t].[Value1]
FROM
	[Parent] [t]

