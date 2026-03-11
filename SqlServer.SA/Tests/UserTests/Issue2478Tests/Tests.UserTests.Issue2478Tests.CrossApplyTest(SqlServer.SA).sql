-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[c_2].[Count_1],
	[c_2].[Sum_1]
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
		) [c_2]

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [t1].[ParentID]
		) [c_2]

