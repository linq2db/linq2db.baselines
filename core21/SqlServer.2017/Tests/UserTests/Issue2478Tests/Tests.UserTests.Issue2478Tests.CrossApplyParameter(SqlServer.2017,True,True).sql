BeforeExecute
-- SqlServer.2017

SELECT
	[q].[ParentID],
	[t1].[Count_1],
	[t1].[Sum_1]
FROM
	[Parent] [q]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1],
				Sum([c_1].[ChildID]) as [Sum_1]
			FROM
				(
					SELECT
						1 as [c1],
						[t].[ChildID]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [q].[ParentID]
				) [c_1]
			GROUP BY
				[c_1].[c1]
		) [t1]
WHERE
	[t1].[Count_1] > 0

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Parent] [q]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				(
					SELECT
						1 as [c1]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [q].[ParentID]
				) [c_1]
			GROUP BY
				[c_1].[c1]
		) [t1]
WHERE
	[t1].[Count_1] > 0

