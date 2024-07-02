BeforeExecute
-- SqlServer.2022

SELECT
	[q].[ParentID],
	[c_2].[COUNT_1],
	[c_2].[SUM_1]
FROM
	[Parent] [q]
		CROSS APPLY (
			SELECT
				COUNT(*) as [COUNT_1],
				SUM([c_1].[ChildID]) as [SUM_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [q].[ParentID]
		) [c_2]

BeforeExecute
-- SqlServer.2022

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

