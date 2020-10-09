BeforeExecute
-- SqlCe

SELECT 
	[t2].[Count1]
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

