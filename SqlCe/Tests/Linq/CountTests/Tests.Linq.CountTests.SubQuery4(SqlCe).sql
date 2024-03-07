BeforeExecute
-- SqlCe

SELECT
	[t2].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Parent] [t1]
			WHERE
				[t1].[ParentID] = [p].[ParentID]
		) [t2]

