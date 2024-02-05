BeforeExecute
-- SqlCe

SELECT
	[t1].[cnt]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > 1
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON [p].[ParentID] = [t1].[ParentID]

