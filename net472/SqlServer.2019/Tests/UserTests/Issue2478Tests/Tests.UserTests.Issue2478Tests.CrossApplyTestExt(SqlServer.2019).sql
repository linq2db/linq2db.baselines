BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[ParentID],
	[t1].[Count_1],
	[t1].[Sum_1]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Count_1],
				SUM([c_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[Parent] [p]

