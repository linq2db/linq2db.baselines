BeforeExecute
-- SqlCe

SELECT 
	[t2].[Count_1]
FROM
	[Child] [a]
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
		) [t2] ON [a].[ParentID] = [t2].[ParentID] AND [a].[ChildID] = [t2].[ChildID]

