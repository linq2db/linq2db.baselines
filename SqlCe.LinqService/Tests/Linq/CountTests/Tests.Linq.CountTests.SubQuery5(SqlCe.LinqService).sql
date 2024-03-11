BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Parent] [p1]
			WHERE
				[p1].[ParentID] = [p].[ParentID]
		) [t1]

