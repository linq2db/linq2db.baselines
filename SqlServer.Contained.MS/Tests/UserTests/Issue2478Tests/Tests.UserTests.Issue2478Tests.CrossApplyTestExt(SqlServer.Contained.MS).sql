BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
				(
					SELECT
						[t].[ChildID]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [p].[ParentID]
				) [c_1]
		) [c_2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT
						*
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [t1].[ParentID]
				) [c_1]
		) [c_2]

