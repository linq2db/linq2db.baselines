BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[t2].[count_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [count_1],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON [p].[ParentID] = [t2].[ParentID]
WHERE
	[t2].[count_1] > 0

