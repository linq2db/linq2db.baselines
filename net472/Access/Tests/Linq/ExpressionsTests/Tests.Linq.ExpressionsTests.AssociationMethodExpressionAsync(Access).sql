BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT 
	[t1].[ParentID], 
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT 
	[t1].[cnt]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [cnt], 
				[cp].[ParentID]
			FROM
				[Child] [cp]
					INNER JOIN [GrandChild] [c_1] ON ([cp].[ParentID] = [c_1].[ParentID] AND [cp].[ChildID] = [c_1].[ChildID])
			GROUP BY
				[cp].[ParentID]
		) [t1] ON ([p].[ParentID] = [t1].[ParentID])

