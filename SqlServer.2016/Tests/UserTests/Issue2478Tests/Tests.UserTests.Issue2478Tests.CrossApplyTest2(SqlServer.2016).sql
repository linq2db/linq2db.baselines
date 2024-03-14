BeforeExecute
-- SqlServer.2016

SELECT
	[p].[ParentID],
	[c_2].[Count_1],
	[c_2].[Sum_1]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1],
				Sum([c_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] <> [p].[ParentID] AND [p].[ParentID] <= 2
		) [c_2]

BeforeExecute
-- SqlServer.2016

SELECT
	Count(*)
FROM
	[Parent] [t1]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1],
				Sum([c_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] <> [t1].[ParentID] AND [t1].[ParentID] <= 2
		) [c_2]

