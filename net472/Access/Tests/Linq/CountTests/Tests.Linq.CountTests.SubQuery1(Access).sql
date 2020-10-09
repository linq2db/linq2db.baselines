BeforeExecute
-- Access AccessOleDb

SELECT 
	[p].[ParentID], 
	[t1].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				([c_1].[ChildID] IS NULL OR [c_1].[ChildID] <> 0)
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON ([p].[ParentID] = [t1].[ParentID] AND [t1].[ParentID] = [p].[ParentID])
WHERE
	[p].[ParentID] <> 5

