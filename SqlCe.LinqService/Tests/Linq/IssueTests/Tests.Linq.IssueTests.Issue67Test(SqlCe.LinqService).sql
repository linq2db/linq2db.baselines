BeforeExecute
-- SqlCe

SELECT
	[t].[ParentID],
	[t1].[Count_1] as [count_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[t].[ParentID] = [c_1].[ParentID]
		) [t1]
WHERE
	[t1].[Count_1] > 0

