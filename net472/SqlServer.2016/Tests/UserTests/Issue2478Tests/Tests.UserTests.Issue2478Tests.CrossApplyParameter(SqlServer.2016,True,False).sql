BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[q].[ParentID],
	[t1].[Count_1],
	[t1].[Sum_1]
FROM
	[Parent] [q]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1],
				Sum([t].[ChildID]) as [Sum_1]
			FROM
				[Child] [t]
			WHERE
				[t].[ParentID] = [q].[ParentID]
		) [t1]
WHERE
	([t1].[Count_1] > 0)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[Parent] [q]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [t]
			WHERE
				[t].[ParentID] = [q].[ParentID]
		) [t1]
WHERE
	([t1].[Count_1] > 0)

