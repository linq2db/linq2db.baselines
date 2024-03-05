BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1] as [Count6]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [t1]

