BeforeExecute
-- Access AccessOleDb

SELECT 
	[cross_1].[ParentID], 
	[cross_1].[ChildID]
FROM
	( 
		SELECT 
			[p].[ParentID], 
			[c_1].[ChildID], 
			[c_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [cross_1]
		INNER JOIN [Parent] [a_Parent1] ON ([cross_1].[ParentID_1] = [a_Parent1].[ParentID])
WHERE
	[cross_1].[ParentID] = [a_Parent1].[ParentID]
ORDER BY
	[cross_1].[ParentID],
	[cross_1].[ChildID]

