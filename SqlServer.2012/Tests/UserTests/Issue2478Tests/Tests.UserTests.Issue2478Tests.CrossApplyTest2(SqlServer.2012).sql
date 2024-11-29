BeforeExecute
-- SqlServer.2012

SELECT
	[p].[ParentID],
	[c_2].[c1],
	[c_2].[c2]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				COUNT(*) as [c1],
				SUM([c_1].[ChildID]) as [c2]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] <> [p].[ParentID] AND [p].[ParentID] <= 2
		) [c_2]

BeforeExecute
-- SqlServer.2012

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
				[c_1].[ParentID] <> [t1].[ParentID] AND [t1].[ParentID] <= 2
		) [c_2]

