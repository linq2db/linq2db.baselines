BeforeExecute
-- SqlServer.2008

SELECT 
	[p].[ParentID], 
	[t1].[Count_1], 
	[t1].[Sum_1]
FROM
	[Parent] [p]
		CROSS APPLY ( 
			SELECT 
				Count(*) as [Count_1], 
				Sum([t].[ChildID]) as [Sum_1]
			FROM
				[Child] [t]
			WHERE
				[t].[ParentID] = [p].[ParentID]
		) [t1]

BeforeExecute
-- SqlServer.2008

SELECT 
	Count(*)
FROM
	[Parent] [p]
		CROSS APPLY ( 
			SELECT 
				Count(*) as [c1]
			FROM
				[Child] [t]
			WHERE
				[t].[ParentID] = [p].[ParentID]
		) [t1]

