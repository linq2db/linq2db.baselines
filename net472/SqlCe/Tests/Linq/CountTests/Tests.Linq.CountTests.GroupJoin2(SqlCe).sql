BeforeExecute
-- SqlCe

SELECT 
	[t2].[Count1], 
	[t4].[Count2]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count1], 
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON [p].[ParentID] = [t2].[ParentID]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count2], 
				[t3].[ParentID]
			FROM
				[GrandChild] [t3]
			GROUP BY
				[t3].[ParentID]
		) [t4] ON [p].[ParentID] = [t4].[ParentID]

