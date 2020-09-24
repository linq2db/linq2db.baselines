BeforeExecute
-- SqlCe

SELECT
	[t1].[Count6]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count6],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON [t1].[ParentID] = [p].[ParentID]

