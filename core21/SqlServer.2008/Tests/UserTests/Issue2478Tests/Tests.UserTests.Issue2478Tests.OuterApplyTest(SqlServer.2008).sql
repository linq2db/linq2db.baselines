BeforeExecute
-- SqlServer.2008

SELECT
	[p].[ParentID],
	[t2].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				(
					SELECT
						1 as [c1]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [p].[ParentID]
				) [t1]
			GROUP BY
				[t1].[c1]
		) [t2]

BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [c1]
			FROM
				(
					SELECT
						1 as [c1]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [p].[ParentID]
				) [t1]
			GROUP BY
				[t1].[c1]
		) [t2]

